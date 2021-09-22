resource "azurerm_storage_account" "func_app_store" {
  name                     = "funcappstore19999"
  resource_group_name      = azurerm_resource_group.function_app_rg.name
  location                 = azurerm_resource_group.function_app_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}