terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.16.0"
    }
  }
}

#   backend "azurerm" {
#     resource_group_name  = "my-tfstate-rg"
#     storage_account_name = "mytfstateaccount"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#   }

# terraform required_providers azurerm