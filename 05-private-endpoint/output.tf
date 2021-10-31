output "dns_a_record" {
    value = module.privateendpoint.dns_a_record
}

output "primary_connection_string" {
  value = module.storage_account.primary_connection_string
}

output "storage_account_id" {
    value = module.storage_account.storage_account_id
}

output "public_ip" {
    value = module.vm.public_ip
}

output "storage_primary_access_key" {
    value = module.storage_account.primary_access_key
}