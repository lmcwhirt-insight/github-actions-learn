

resource "azurerm_service_plan" "function-sp" {
  name                = format("%s-%s", local.base-name, "sp")
  resource_group_name = azurerm_resource_group.deployment-rg[0].name
  location            = azurerm_resource_group.deployment-rg[0].location
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" "example" {
  name                       = format("%s-%s", local.base-name, "fa")
  resource_group_name        = azurerm_resource_group.deployment-rg[0].name
  location                   = azurerm_resource_group.deployment-rg[0].location
  service_plan_id            = azurerm_service_plan.function-sp.id
  storage_account_name       = azurerm_storage_account.function-app-sa.name
  storage_account_access_key = azurerm_storage_account.function-app-sa.primary_access_key

  site_config {
    application_stack {
      dotnet_version = "8.0"
    }
  }
}