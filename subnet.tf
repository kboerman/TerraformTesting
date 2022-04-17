resource "azurerm_subnet" "NL-Subnet-Prod" {
  name                 = "ProdSubnet"
  resource_group_name  = azurerm_resource_group.net.name
  virtual_network_name = azurerm_virtual_network.ProdVnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_subnet" "NL-Subnet-Test" {
  name                 = "TestSubnet"
  resource_group_name  = azurerm_resource_group.net.name
  virtual_network_name = azurerm_virtual_network.TestVnet.name
  address_prefixes     = ["192.168.1.0/24"]
}
