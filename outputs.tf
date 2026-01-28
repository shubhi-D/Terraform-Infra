output "resource_group_name" {
  description = "Name of the existing resource group"
  value       = data.azurerm_resource_group.existing.name
}
