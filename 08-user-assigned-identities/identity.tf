resource "azurerm_user_assigned_identity" "id" {
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location

  name = "storage_access"
}