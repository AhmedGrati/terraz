
provider "azurerm" {
  features {}
}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.40.0"
    }
  }

}

# Used to group resources
resource "azurerm_resource_group" "rg" {
  name     = "AzureTerraformResourceGroup"
  location = "westeurope"
}
