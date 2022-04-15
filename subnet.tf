resource "azurerm_subnet" "KBsubnet" {
  name                 = "KB-internal"
  resource_group_name  = azurerm_resource_group.net.name
  virtual_network_name = azurerm_virtual_network.KBvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
