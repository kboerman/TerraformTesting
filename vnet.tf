
resource "azurerm_virtual_network" "KBvnet" {
  name                = "KB-network"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = azurerm_resource_group.net.name
}