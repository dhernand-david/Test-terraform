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
        key                  = "terraformjenkins.tfstate"
        access_key           = "oGhyAhioABvnJJJPLe/ag4j2V0MTRt0+Er1oj7h2mn8Civ+miphqvbdlXTESKg4OiCtRf4yRsqn7kcsbcdZGBg=="
    }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  subscription_id = "f316307d-3970-4d1f-9a71-28ab4dec62ab"
  client_id       = "4543c90a-9e9e-43a1-a45b-41d7e28ce141"
  client_secret   = "aylyhurFfE.VGriYPa08l4U9f-JNdGgfci"
  tenant_id       = "111d9840-cadf-4780-8b46-07fa01ce4830"
  features {}
  
}

// Resource Group
resource "azurerm_resource_group" "resource-group" {
  name     = "jenkins22"
  location = "West Europe"
}