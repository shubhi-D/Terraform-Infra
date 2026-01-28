resource "azurerm_storage_account" "this" {
  name                     = local.storage_account_name
  resource_group_name      = data.azurerm_resource_group.existing.name
  location                 = data.azurerm_resource_group.existing.location

  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}
