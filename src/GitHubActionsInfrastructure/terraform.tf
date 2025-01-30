terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

#   backend "azurerm" {
#     resource_group_name  = "my-tfstate-rg"
#     storage_account_name = "mytfstateaccount"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#   }
}