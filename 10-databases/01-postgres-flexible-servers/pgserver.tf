resource "azurerm_postgresql_flexible_server" "pgsql" {
  # name: unique across the entire Azure service
  name                   = "psqlflexibleserver9556"

  resource_group_name    = azurerm_resource_group.rg.name
  location               = azurerm_resource_group.rg.location
  version                = "13"

  # if you dont want to make server private
  # dont add below 2 lines
  delegated_subnet_id    = azurerm_subnet.endpoint_subnet.id
  private_dns_zone_id    = azurerm_private_dns_zone.pvtdnszone.id

  administrator_login    = "psqladmin"
  administrator_password = "H@Sh1CoR3!"
  zone                   = "1"

  storage_mb = 32768

  sku_name   = "B_Standard_B1ms"
  depends_on = [azurerm_private_dns_zone_virtual_network_link.vnetlink]

}

# only useful if server is public
# so that you can allow only whitelisted IP ranges
resource "azurerm_postgresql_flexible_server_firewall_rule" "firewall" {
  name             = "myip"
  server_id        = azurerm_postgresql_flexible_server.pgsql.id
  start_ip_address = "106.193.115.178"
  end_ip_address   = "106.193.115.178"
}
