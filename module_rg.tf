
#############################################################################
# TERRAFORM PROVIDERS
#############################################################################

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
  }

}

provider "azurerm" {
  features {}
}
#############################################################################
# TERRAFORM CONFIG
#############################################################################

module "rg" {
  source = "git::https://github.com/arunksingh16/terraform-azure-rg-module.git"
}

#############################################################################
# TERRAFORM OUTPUT
#############################################################################

output "rg_name" {
  value = module.rg.resource_group_name
}
output "rg_location" {
  value = module.rg.resource_group_loc
}
