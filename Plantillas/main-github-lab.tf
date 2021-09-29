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

// App Service Plan
resource "azurerm_app_service_plan" "service-plan" {
  name                = "asp-dhernand-terraform"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.rg.name
  kind = "Linux"
  reserved = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}

// App Service
resource "azurerm_app_service" "appsvc" {
  name                = "app-dhernand-terraform"
  location            = "West Europe"
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.service-plan.id
  https_only = true

  site_config {
      ftps_state = "FtpsOnly"
      always_on = true
  }
}

