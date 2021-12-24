resource "azurerm_kusto_cluster" "adx" {
  name                = var.adx_cluster
  location            = azurerm_resource_group.logs_rg.location
  resource_group_name = azurerm_resource_group.logs_rg.name
  engine              = "V3"
  double_encryption_enabled  = var.double_encryption

  sku {
    name     = var.adx_sku_name
    capacity = var.adx_sku_capacity
  }

  tags = var.tags
}

resource "azurerm_kusto_database" "database" {
  name                = var.adx_database
  resource_group_name = var.resource_group
  location            = azurerm_resource_group.logs_rg.location
  cluster_name        = azurerm_kusto_cluster.adx.name
  hot_cache_period    = var.hot_cache_period
  soft_delete_period  = var.soft_delete_period
}

resource "azurerm_kusto_eventhub_data_connection" "eventhub_connection" {
  name                = var.adx_eh_connection_name
  resource_group_name = var.resource_group
  location            = azurerm_resource_group.logs_rg.location
  cluster_name        = azurerm_kusto_cluster.adx.name
  database_name       = azurerm_kusto_database.database.name

  eventhub_id    = azurerm_eventhub.eh.id
  consumer_group = data.azurerm_eventhub_consumer_group.default.name

  table_name        = var.adx_db_table_name
  mapping_rule_name = var.ingestion_mapping_rule_name
  data_format       = var.eh_message_format
}
