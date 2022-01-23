
# Read role for storage account
resource "azurerm_role_assignment" "storage" {
    scope = module.storage_account.storage_account_id

    role_definition_id = azurerm_role_definition.custom_role_read.role_definition_resource_id

    principal_id = module.vm.vm_pricipal_id
}

# Write role for container
resource "azurerm_role_assignment" "container" {
    scope = azurerm_storage_container.container2.resource_manager_id

    role_definition_id = azurerm_role_definition.custom_role.role_definition_resource_id

    principal_id = module.vm.vm_pricipal_id
}