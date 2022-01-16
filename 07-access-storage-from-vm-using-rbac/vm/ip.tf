resource "azurerm_public_ip" "public_ip" {
  name                = format("%s_%s", var.name, "ip")
  resource_group_name = var.resource_group_name
  location            = var.location
  allocation_method   = "Dynamic"
}
