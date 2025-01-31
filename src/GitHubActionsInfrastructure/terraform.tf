terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=4.16.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tf-state-rg"
    storage_account_name = "satfstateexample"
    container_name       = "ghal-tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

# terraform required_providers azurerm