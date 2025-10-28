output "resource_group_name" {
  value       = azurerm_resource_group.ai_nprod.name
  description = "Resource group name"
}

output "account_name" {
  value       = azurerm_cognitive_account.ai_nprod_ameer.name
  description = "AIServices account name"
}

output "account_id" {
  value       = azurerm_cognitive_account.ai_nprod_ameer.id
  description = "AIServices account ID"
}

output "deployment_name" {
  value       = try(azapi_resource.model_deployment[0].name, null)
  description = "Model deployment name"
}

output "deployment_id" {
  value       = try(azapi_resource.model_deployment[0].id, null)
  description = "Model deployment ID"
}

output "deployment_status" {
  value = var.enable_deployment ? {
    name     = try(azapi_resource.model_deployment[0].name, null)
    model    = "OpenAI/gpt-4o v2024-11-20"
    sku      = "GlobalStandard"
    capacity = 3
    id       = try(azapi_resource.model_deployment[0].id, null)
  } : null
  description = "Model deployment status"
}
