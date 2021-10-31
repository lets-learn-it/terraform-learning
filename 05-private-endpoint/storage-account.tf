module "storage_account" {
    source = "./storageaccount"

    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    name = "demo"
    white_list_ip = ["106.193.89.213"]
}