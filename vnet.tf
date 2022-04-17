
resource "azurerm_virtual_network" "ProdVnet" {
  name                = "NL-Vnet-Prod"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.net.name
}

resource "azurerm_virtual_network" "TestVnet" {
  name                = "NL-Vnet-Test"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.net.name
}