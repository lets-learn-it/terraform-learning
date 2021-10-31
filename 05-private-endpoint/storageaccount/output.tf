output "primary_connection_string" {
  value = azurerm_storage_account.storage.primary_connection_string
}

output "storage_account_id" {
    value = azurerm_storage_account.storage.id
}

output "primary_access_key" {
    value = azurerm_storage_account.storage.primary_access_key
}