variable "webappName" {
  type        = string
  description = "Name of azure webapp"
}

variable "webappDeploymentName" {
  type        = string
  description = "Deployment name"
}

variable "skuName" {
  type        = string
  description = "The SKU name of App Service Plan"
}

variable "skuTier" {
  type        = string
  description = "The SKU tier of App Service Plan"
}

variable "resourceGroupName" {
  type        = string
  description = "The name of resource group"
}

variable "rgLocation" {
  type        = string
  description = "Location of resource group"
}
