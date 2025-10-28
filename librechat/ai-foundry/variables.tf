variable "location" {
  type        = string
  description = "Azure region for AIServices account"
  default     = "southeastasia"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name for AIServices account"
  default     = "rg-ai-nprod-ameer"
}

variable "enable_deployment" {
  type        = bool
  description = "Whether to create the model deployment"
  default     = true
}
