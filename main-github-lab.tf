terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {

  features {}
 }

resource "azurerm_resource_group" "example" {
  name     = "rg_git"
  location = "West Europe"
}


