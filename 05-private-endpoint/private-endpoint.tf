module "privateendpoint" {
    source = "./privateendpoint/"

    resource_group_name = azurerm_resource_group.example.name
    location = azurerm_resource_group.example.location
    name = "demo"

    subnet_id = azurerm_subnet.endpoint_subnet.id
    private_link_enabled_resource_id = module.storage_account.storage_account_id
    private_dns_zone_name = azurerm_private_dns_zone.example.name
    subresource_names = ["blob"]

    depends_on = [
      azurerm_private_dns_zone.example
    ]
}