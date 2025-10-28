# Create resource group
resource "azurerm_resource_group" "ai_nprod" {
  name     = var.resource_group_name
  location = var.location
}

# Create AIServices account
resource "azurerm_cognitive_account" "ai_nprod_ameer" {
  name                = "ai-nprod-ameer"
  location            = azurerm_resource_group.ai_nprod.location
  resource_group_name = azurerm_resource_group.ai_nprod.name
  kind                = "AIServices"
  sku_name            = "S0"
}

# Use the created account for deployments
locals {
  foundry_account_id = azurerm_cognitive_account.ai_nprod_ameer.id
}
