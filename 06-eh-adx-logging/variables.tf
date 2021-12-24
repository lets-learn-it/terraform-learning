variable "resource_group" {
    description = "where we place event hub and azure data explorer"
    type = string
}

variable "adx_cluster" {
    description = "name of adx cluster"
    type = string
}

variable "adx_database" {
    type = string
    description = "name of adx dataset"
}

variable "eh_namespace" {
    type = string
    description = "name of event hub namespace"
}

variable "eh_name" {
    type = string
    description = "name of event hub"
}

variable "double_encryption" {
    type = bool
}

variable "hot_cache_period" {
    type = string
    description = "data will be cached for this no of days"
}

variable "soft_delete_period" {
    type = string
    description = "after these no of days data will be deleted"
}

variable "adx_sku_name" {
    type = string
    description = "type of adx cluster"
}

variable "adx_sku_capacity" {
    type = string
}

variable "tags" {
    type = map(string)
}

variable "adx_eh_connection_name" {
    type = string
}

variable "adx_db_table_name" {
    type = string
}

variable "ingestion_mapping_rule_name" {
    type = string
}

variable "eh_message_format" {
    type = string
    default = "JSON"
}

