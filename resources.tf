# Creates a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.rg_location
}

resource "azurerm_template_deployment" "azure_web_app" {
  count               = var.deployment_count
  name                = var.webapp_deployment_name
  resource_group_name = azurerm_resource_group.example.name

  template_body = file("./templates/webapp/deploy.json")

  parameters = {
    webAppName = var.webapp_name
    appSkuName = var.sku_name
    appSkuTier = var.sku_tier
  }

  deployment_mode = "Incremental"
  depends_on      = [azurerm_resource_group.example]
}