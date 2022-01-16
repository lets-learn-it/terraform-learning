output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}

output "vm_id" {
  value = azurerm_linux_virtual_machine.example.id
}

output "vm_pricipal_id" {
  value = azurerm_linux_virtual_machine.example.identity[0].principal_id
}