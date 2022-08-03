output "public_ip" {
  value = module.vm.public_ip
}

# this fqdn will be useful only if server is public
output "pgsql_fqdn" {
  value = azurerm_postgresql_flexible_server.pgsql.fqdn
}
