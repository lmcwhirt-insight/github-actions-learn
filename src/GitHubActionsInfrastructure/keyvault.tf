resource "azurerm_key_vault" "key-vault" {
  name                        = format("%s-%s", local.base-name, "kv")
  resource_group_name         = azurerm_resource_group.deployment-rg[0].name
  location                    = azurerm_resource_group.deployment-rg[0].location
  tenant_id                   = var.tenantId

  enable_rbac_authorization = true
  enabled_for_deployment = true

  enabled_for_disk_encryption = true
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false

  sku_name = "standard"
}