resource "azurerm_private_endpoint" "endpoint" {
  name                = format("%s-%s", var.name, "private-endpoint")
  location            = var.location
  resource_group_name = var.resource_group_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = "example-privateserviceconnection"
    private_connection_resource_id = var.private_link_enabled_resource_id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }
}

resource "azurerm_private_dns_a_record" "dns_a" {
  name                = "demostorage9553"
  zone_name           = var.private_dns_zone_name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [azurerm_private_endpoint.endpoint.private_service_connection.0.private_ip_address]
}