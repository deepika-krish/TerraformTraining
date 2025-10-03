# Production Environment Configuration
# This file contains variable values for production deployment

# Storage Account Configuration - Production
storage_account_name = "stterraform024"

# Resource Group Configuration - Production
resource_group_name = "rg-terraform-training01"

# Azure Region - Production region
location = "westus2"

# Environment Tagging - Production
environment = "Training"
project     = "TerraformTraining"

# Storage Account Settings - Production (high availability)
storage_account_tier     = "Standard"
storage_replication_type = "LRS"