module "vm" {
  source = "./vm/"
  
  resource_group_name = azurerm_resource_group.rg.name
  location = azurerm_resource_group.rg.location
  public_key_path = "~/.ssh/id_rsa.pub"
  name = "demo"
  subnet_id = azurerm_subnet.public_subnet.id
}