output "tableflow_topics_id" {
  description = "Map of id values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no id are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.id if v.id != null && length(v.id) > 0 }
}
output "tableflow_topics_azure_data_lake_storage_gen_2" {
  description = "Map of azure_data_lake_storage_gen_2 values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no azure_data_lake_storage_gen_2 are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.azure_data_lake_storage_gen_2) if v.azure_data_lake_storage_gen_2 != null && length(v.azure_data_lake_storage_gen_2) > 0 }
}
output "tableflow_topics_byob_aws" {
  description = "Map of byob_aws values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no byob_aws are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.byob_aws) if v.byob_aws != null && length(v.byob_aws) > 0 }
}
output "tableflow_topics_credentials" {
  description = "Map of credentials values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no credentials are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.credentials) if v.credentials != null && length(v.credentials) > 0 }
  sensitive   = true
}
output "tableflow_topics_data_retention_ms" {
  description = "Map of data_retention_ms values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no data_retention_ms are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.data_retention_ms if v.data_retention_ms != null && length(v.data_retention_ms) > 0 }
}
output "tableflow_topics_display_name" {
  description = "Map of display_name values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no display_name are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "tableflow_topics_enable_compaction" {
  description = "Map of enable_compaction values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no enable_compaction are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.enable_compaction if v.enable_compaction != null }
}
output "tableflow_topics_enable_partitioning" {
  description = "Map of enable_partitioning values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no enable_partitioning are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.enable_partitioning if v.enable_partitioning != null }
}
output "tableflow_topics_environment" {
  description = "Map of environment values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no environment are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "tableflow_topics_error_handling" {
  description = "Map of error_handling values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no error_handling are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.error_handling) if v.error_handling != null && length(v.error_handling) > 0 }
}
output "tableflow_topics_google_cloud_storage" {
  description = "Map of google_cloud_storage values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no google_cloud_storage are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.google_cloud_storage) if v.google_cloud_storage != null && length(v.google_cloud_storage) > 0 }
}
output "tableflow_topics_kafka_cluster" {
  description = "Map of kafka_cluster values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no kafka_cluster are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => one(v.kafka_cluster) if v.kafka_cluster != null && length(v.kafka_cluster) > 0 }
}
output "tableflow_topics_managed_storage" {
  description = "Map of managed_storage values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no managed_storage are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.managed_storage if v.managed_storage != null && length(v.managed_storage) > 0 }
}
output "tableflow_topics_metadata_column_naming_scheme" {
  description = "Map of metadata_column_naming_scheme values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no metadata_column_naming_scheme are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.metadata_column_naming_scheme if v.metadata_column_naming_scheme != null && length(v.metadata_column_naming_scheme) > 0 }
}
output "tableflow_topics_record_failure_strategy" {
  description = "Map of record_failure_strategy values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no record_failure_strategy are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.record_failure_strategy if v.record_failure_strategy != null && length(v.record_failure_strategy) > 0 }
}
output "tableflow_topics_retention_ms" {
  description = "Map of retention_ms values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no retention_ms are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.retention_ms if v.retention_ms != null && length(v.retention_ms) > 0 }
}
output "tableflow_topics_suspended" {
  description = "Map of suspended values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no suspended are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.suspended if v.suspended != null }
}
output "tableflow_topics_table_formats" {
  description = "Map of table_formats values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no table_formats are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.table_formats if v.table_formats != null && length(v.table_formats) > 0 }
}
output "tableflow_topics_table_path" {
  description = "Map of table_path values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no table_path are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.table_path if v.table_path != null && length(v.table_path) > 0 }
}
output "tableflow_topics_write_mode" {
  description = "Map of write_mode values across all tableflow_topics, keyed the same as var.tableflow_topics except keys with no write_mode are omitted"
  value       = { for k, v in confluent_tableflow_topic.tableflow_topics : k => v.write_mode if v.write_mode != null && length(v.write_mode) > 0 }
}

