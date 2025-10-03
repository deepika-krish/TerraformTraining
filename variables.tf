# Variable for storage account name
variable "storage_account_name" {
  description = "Name of the Azure Storage Account"
  type        = string
  //default     = "stterraformtraining001"

  validation {
    condition     = length(var.storage_account_name) >= 3 && length(var.storage_account_name) <= 24 && can(regex("^[a-z0-9]+$", var.storage_account_name))
    error_message = "Storage account name must be between 3 and 24 characters long and contain only lowercase letters and numbers."
  }
}

# Variable for resource group name
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  //default     = "rg-terraform-training"
}

# Variable for location
variable "location" {
  description = "Azure region where resources will be created"
  type        = string
  //default     = "westus2"

  validation {
    condition = contains([
      "eastus", "eastus2", "westus", "westus2", "westus3", "centralus",
      "northcentralus", "southcentralus", "westcentralus", "canadacentral",
      "canadaeast", "brazilsouth", "northeurope", "westeurope", "francecentral",
      "germanywestcentral", "norwayeast", "switzerlandnorth", "uksouth",
      "ukwest", "southeastasia", "eastasia", "australiaeast", "australiasoutheast",
      "centralindia", "southindia", "westindia", "japaneast", "japanwest",
      "koreacentral", "koreasouth"
    ], var.location)
    error_message = "Location must be a valid Azure region."
  }
}

# Variable for environment tag
variable "environment" {
  description = "Environment name (e.g., dev, test, prod)"
  type        = string
  //default     = "Training"
}

# Variable for project tag
variable "project" {
  description = "Project name for resource tagging"
  type        = string
  //default     = "TerraformTraining"
}

# Variable for storage account tier
variable "storage_account_tier" {
  description = "Storage account tier (Standard or Premium)"
  type        = string
  //default     = "Standard"

  validation {
    condition     = contains(["Standard", "Premium"], var.storage_account_tier)
    error_message = "Storage account tier must be either Standard or Premium."
  }
}

# Variable for storage account replication type
variable "storage_replication_type" {
  description = "Storage account replication type"
  type        = string
  //default     = "LRS"

  validation {
    condition     = contains(["LRS", "GRS", "RAGRS", "ZRS", "GZRS", "RAGZRS"], var.storage_replication_type)
    error_message = "Storage replication type must be one of: LRS, GRS, RAGRS, ZRS, GZRS, RAGZRS."
  }
}