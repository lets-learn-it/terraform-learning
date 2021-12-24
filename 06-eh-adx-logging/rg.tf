resource "azurerm_resource_group" "logs_rg" {
  name     = var.resource_group
  location = "East US"
}