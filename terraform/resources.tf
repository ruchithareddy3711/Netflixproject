resource "azurerm_resource_group" "RGname" {
  name     = var.Resource_group_name
  location = var.location
}

resource "azurerm_service_plan" "nfappserviceplan" {
  name     = var.asp_name
  location = azurerm_resource_group.RGname.location
  resource_group_name = azurerm_resource_group.RGname.name
  os_type  = "Windows"
  sku_name = "F1"

}

resource "azurerm_windows_web_app" "webapp" {
  name                = var.web_app_name
  location            = azurerm_resource_group.RGname.location
  resource_group_name = azurerm_resource_group.RGname.name
  service_plan_id     = azurerm_service_plan.nfappserviceplan.id

  site_config {always_on = false}
}
