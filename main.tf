# Configure the Azure Provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  required_version = ">= 1.0.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = var.environment
    Project     = var.project
    CreatedBy   = "Terraform"
  }
}

# Create a second resource group for additional resources
resource "azurerm_resource_group" "rg_secondary" {
  name     = "${var.resource_group_name}-secondary"
  location = var.location

  tags = {
    Environment = var.environment
    Project     = var.project
    CreatedBy   = "Terraform"
    Purpose     = "Secondary Resources"
  }
}

