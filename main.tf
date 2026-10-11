resource "confluent_tableflow_topic" "tableflow_topics" {
  for_each = var.tableflow_topics

  display_name                  = each.value.display_name
  data_retention_ms             = each.value.data_retention_ms
  metadata_column_naming_scheme = each.value.metadata_column_naming_scheme
  record_failure_strategy       = each.value.record_failure_strategy
  retention_ms                  = each.value.retention_ms
  table_formats                 = each.value.table_formats

  environment {
    id = each.value.environment.id
  }

  kafka_cluster {
    id = each.value.kafka_cluster.id
  }

  dynamic "azure_data_lake_storage_gen_2" {
    for_each = each.value.azure_data_lake_storage_gen_2 != null ? [each.value.azure_data_lake_storage_gen_2] : []
    content {
      container_name          = azure_data_lake_storage_gen_2.value.container_name
      provider_integration_id = azure_data_lake_storage_gen_2.value.provider_integration_id
      storage_account_name    = azure_data_lake_storage_gen_2.value.storage_account_name
    }
  }

  dynamic "byob_aws" {
    for_each = each.value.byob_aws != null ? [each.value.byob_aws] : []
    content {
      bucket_name             = byob_aws.value.bucket_name
      provider_integration_id = byob_aws.value.provider_integration_id
    }
  }

  dynamic "credentials" {
    for_each = each.value.credentials != null ? [each.value.credentials] : []
    content {
      key    = credentials.value.key
      secret = credentials.value.secret
    }
  }

  dynamic "error_handling" {
    for_each = each.value.error_handling != null ? [each.value.error_handling] : []
    content {
      log_target = error_handling.value.log_target
      mode       = error_handling.value.mode
    }
  }

  dynamic "google_cloud_storage" {
    for_each = each.value.google_cloud_storage != null ? [each.value.google_cloud_storage] : []
    content {
      bucket_name             = google_cloud_storage.value.bucket_name
      provider_integration_id = google_cloud_storage.value.provider_integration_id
    }
  }

  dynamic "managed_storage" {
    for_each = each.value.managed_storage != null ? each.value.managed_storage : []
    content {
    }
  }
}

