
# In this zone, a record will get created
# using that record, clients can access db.
resource "azurerm_private_dns_zone" "pvtdnszone" {
  #  should end with suffix .postgres.database.azure.com
  name                = "mypgdb.postgres.database.azure.com"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnetlink" {
  name                  = "pgsql-vnet-link"
  private_dns_zone_name = azurerm_private_dns_zone.pvtdnszone.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
  resource_group_name   = azurerm_resource_group.rg.name
}
