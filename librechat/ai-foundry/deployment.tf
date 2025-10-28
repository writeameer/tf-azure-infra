# Create model deployment
resource "azapi_resource" "model_deployment" {
  count     = var.enable_deployment ? 1 : 0
  type      = "Microsoft.CognitiveServices/accounts/deployments@2025-10-01-preview"
  name      = "ai-nprod-ameer"
  parent_id = local.foundry_account_id
  
  body = {
    properties = {
      model = {
        format  = "OpenAI"
        name    = "gpt-4o"
        version = "2024-11-20"
      }
    }
    sku = {
      name     = "GlobalStandard"
      capacity = 1
    }
  }
  
  schema_validation_enabled = false
}

