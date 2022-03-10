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

resource "azurerm_resource_group" "rg" {
  name     = "rg_app-devops"
  location = "West Europe"
}