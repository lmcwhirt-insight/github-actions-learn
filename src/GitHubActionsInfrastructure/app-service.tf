resource "azurerm_service_plan" "web-app-sp" {
  name                = format("%s-%s", local.base-name, "sp")
  resource_group_name = azurerm_resource_group.deployment-rg[0].name
  location            = azurerm_resource_group.deployment-rg[0].location
  os_type             = "Linux"
  sku_name            = "F1"
}

resource "azurerm_application_insights" "api-web-ai" {
  name                = format("%s-api-web-%s", local.base-name, "ai")
  resource_group_name = azurerm_resource_group.deployment-rg[0].name
  location            = azurerm_resource_group.deployment-rg[0].location

  workspace_id        = azurerm_log_analytics_workspace.law.id
  
  application_type    = "web"
  retention_in_days   = 30
}

resource "azurerm_linux_web_app" "api-web-app" {
  name                = format("%s-%s", local.base-name, "wa")
  resource_group_name = azurerm_resource_group.deployment-rg[0].name
  location            = azurerm_resource_group.deployment-rg[0].location
  service_plan_id     = azurerm_service_plan.web-app-sp.id

  app_settings  = {

  }

  https_only = true
  ftp_publish_basic_authentication_enabled = false

  identity {
    type = "SystemAssigned"
  }
  // key_vault_reference_identity_id = azurerm_key_vault.key-vault.id

  
  site_config {
    always_on = false
    default_documents = []
    application_stack {
      dotnet_version = "8.0"
    }
    ftps_state = "Disabled"
    minimum_tls_version = "1.2"

    health_check_path = "/health"
    health_check_eviction_time_in_min = 5

    scm_use_main_ip_restriction = true
    scm_minimum_tls_version = "1.2"
  }
}