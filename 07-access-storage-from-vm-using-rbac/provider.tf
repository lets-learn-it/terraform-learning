provider "azurerm" {
  features {}
}


terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "2.88.1"
    }
  }
}
