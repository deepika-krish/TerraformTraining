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
resource "azurerm_resource_group" "main" {
  name     = "rg-terraform-training"
  location = "westus2"

  tags = {
    Environment = "Training"
    Project     = "TerraformTraining"
    CreatedBy   = "Terraform"
  }
}