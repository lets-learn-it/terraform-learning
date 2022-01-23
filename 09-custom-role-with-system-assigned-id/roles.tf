
resource "azurerm_role_definition" "custom_role" {
  name        = "my-custom-role"
  scope       = azurerm_resource_group.example.id
  description = "This is a custom role created via Terraform for VM"

  permissions {
    data_actions     = ["Microsoft.Storage/storageAccounts/blobServices/containers/*"]
    not_actions = []
  }

#   assignable_scopes = [
    
#   ]
}

resource "azurerm_role_definition" "custom_role_read" {
  name        = "custom-read-role"
  scope       = azurerm_resource_group.example.id
  description = "This is a custom role created via Terraform for VM"

  permissions {
    actions     = ["Microsoft.Storage/storageAccounts/blobServices/containers/read"]
    not_actions = []
  }

#   assignable_scopes = [
    
#   ]
}