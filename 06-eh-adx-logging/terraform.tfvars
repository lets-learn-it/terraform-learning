resource_group = "eh-adx-logs"

adx_cluster = "logscluster"
adx_database = "logsdb"
double_encryption = true
hot_cache_period = "P31D"
soft_delete_period = "P365D"
adx_sku_name = "Standard_D11_v2"
adx_sku_capacity = 2

eh_namespace = "logseventhubns"
eh_name = "logs_eventhub"

adx_eh_connection_name = "adxehconn"
adx_db_table_name = "logs_table"
ingestion_mapping_rule_name = "logs_table_json_ingestion_mapping"

tags = {
    "environment": "prod"
}
