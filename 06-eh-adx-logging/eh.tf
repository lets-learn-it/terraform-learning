resource "azurerm_eventhub_namespace" "eh_namespace" {
  name                = var.eh_namespace
  location            = azurerm_resource_group.logs_rg.location
  resource_group_name = azurerm_resource_group.logs_rg.name
  sku                 = "Standard"
  capacity            = 1
  zone_redundant      = true

  tags = var.tags
}

resource "azurerm_eventhub" "eh" {
  name                = var.eh_name
  namespace_name      = azurerm_eventhub_namespace.eh_namespace.name
  resource_group_name = var.resource_group
  partition_count     = 1
  message_retention   = 1
}

data "azurerm_eventhub_consumer_group" "default" {
  name                = "$Default"
  namespace_name      = azurerm_eventhub_namespace.eh_namespace.name
  eventhub_name       = azurerm_eventhub.eh.name
  resource_group_name = var.resource_group
}
