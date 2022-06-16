################################################################################
# Data Source
################################################################################

output "data_sources" {
  description = "Map of the data source created and their attributes"
  value       = grafana_data_source.this
}
