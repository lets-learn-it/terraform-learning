module "storage_account" {
    source = "./storageaccount"

    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    name = "demo"
    # whitelist ip of machine from which terraform creating infra
    # else terraform apply will fail with 403
    white_list_ip = ["106.220.73.215"]
}

resource "azurerm_storage_container" "container" {
  name                  = "demo"
  storage_account_name  = module.storage_account.storage_account_name
  container_access_type = "private"
}