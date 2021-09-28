terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
    backend "azurerm" {
        resource_group_name  = "dhernand"
        storage_account_name = "dhernandsta"
        container_name       = "tstate"
        key                  = "terraformradio.tfstate"
    }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {

  features {}
 }
