module "vm" {
    source = "./vm/"
    
    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    public_key_path = "C:/Users/wv3cxq/.ssh/id_rsa.pub"
    name = "demo"
    subnet_id = azurerm_subnet.public_subnet.id
    user_ids = [azurerm_user_assigned_identity.id.id]
}