resource "azurerm_resource_group" "Prod-VM" {
  name     = "NL-Farmer-Prod"
  location = var.location
}

resource "azurerm_resource_group" "Test-VM" {
  name     = "NL-Farmer-Test"
  location = var.location
}

resource "azurerm_resource_group" "net" {
  name     = "KB-resources-Net"
  location = var.location
}
