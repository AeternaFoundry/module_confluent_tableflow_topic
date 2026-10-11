variable "tableflow_topics" {
  description = <<EOT
Map of tableflow_topics, attributes below
Required:
    - display_name
    - environment (block):
        - id (required)
    - kafka_cluster (block):
        - id (required)
Optional:
    - data_retention_ms
    - metadata_column_naming_scheme
    - record_failure_strategy
    - retention_ms
    - table_formats
    - azure_data_lake_storage_gen_2 (block):
        - container_name (required)
        - provider_integration_id (required)
        - storage_account_name (required)
    - byob_aws (block):
        - bucket_name (required)
        - provider_integration_id (required)
    - credentials (block):
        - key (required)
        - secret (required)
    - error_handling (block):
        - log_target (optional)
        - mode (optional)
    - google_cloud_storage (block):
        - bucket_name (required)
        - provider_integration_id (required)
    - managed_storage (block):
EOT

  type = map(object({
    display_name                  = string
    data_retention_ms             = optional(string)
    metadata_column_naming_scheme = optional(string)
    record_failure_strategy       = optional(string)
    retention_ms                  = optional(string)
    table_formats                 = optional(set(string))
    environment = object({
      id = string
    })
    kafka_cluster = object({
      id = string
    })
    azure_data_lake_storage_gen_2 = optional(object({
      container_name          = string
      provider_integration_id = string
      storage_account_name    = string
    }))
    byob_aws = optional(object({
      bucket_name             = string
      provider_integration_id = string
    }))
    credentials = optional(object({
      key    = string
      secret = string
    }))
    error_handling = optional(object({
      log_target = optional(string)
      mode       = optional(string)
    }))
    google_cloud_storage = optional(object({
      bucket_name             = string
      provider_integration_id = string
    }))
    managed_storage = optional(list(object({
    })))
  }))
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

