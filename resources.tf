# Creates a resource group
resource "azurerm_resource_group" "example" {
  name     = var.resourceGroupName
  location = var.rgLocation
}

resource "azurerm_template_deployment" "azure_web_app" {
  count               = 1
  name                = var.webappDeploymentName
  resource_group_name = azurerm_resource_group.example.name

  template_body = file("./templates/webapp/deploy.json")

  parameters = {
    webAppName = var.webappName
    appSkuName = var.skuName
    appSkuTier = var.skuTier
  }

  deployment_mode = "Incremental"
  depends_on      = [azurerm_resource_group.example]
}