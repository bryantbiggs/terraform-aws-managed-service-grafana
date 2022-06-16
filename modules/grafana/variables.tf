variable "create" {
  description = "Determines whether a resources will be created"
  type        = bool
  default     = true
}

################################################################################
# Data Source
################################################################################

variable "data_sources" {
  description = "Map of data source definitions to create"
  type        = any
  default     = {}
}
