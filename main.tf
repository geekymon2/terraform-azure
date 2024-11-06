# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  subscription_id = ""
  tenant_id       = ""
}

resource "azurerm_resource_group" "azurerm_resource_group" {
  name     = var.resource_group_name
  location = "Australia East"
  tags = {
    environment = var.environment_tag
  }
}