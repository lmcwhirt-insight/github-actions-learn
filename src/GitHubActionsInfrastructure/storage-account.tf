locals {
}

resource "azurerm_storage_account" "function-app-sa" {
  name                     = format("%s%s%s", local.short-name, "fa","sa")
  resource_group_name      = azurerm_resource_group.deployment-rg[0].name
  location                 = azurerm_resource_group.deployment-rg[0].location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}