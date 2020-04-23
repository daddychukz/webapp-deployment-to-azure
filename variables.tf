variable "webapp_name" {
  type        = string
  description = "Name of azure webapp"
}

variable "webapp_deployment_name" {
  type        = string
  description = "Deployment name"
}

variable "sku_name" {
  type        = string
  description = "The SKU name of App Service Plan"
}

variable "sku_tier" {
  type        = string
  description = "The SKU tier of App Service Plan"
}

variable "resource_group_name" {
  type        = string
  description = "The name of resource group"
}

variable "rg_location" {
  type        = string
  description = "Location of resource group"
}

variable "deployment_count" {
  type        = number
  description = "Number of template deployments"
}