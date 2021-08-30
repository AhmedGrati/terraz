
provider "azurerm" {
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.42.0"
    }
  }
}
variable "resource_group_names" {
  type        = map(any)
  description = "Possible resource group names for each workspace"
  default = {
    dev  = "dev-rg"
    test = "test-rg"
    prod = "prod-rg"
  }
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_names[terraform.workspace]
  location = "East US"
}
