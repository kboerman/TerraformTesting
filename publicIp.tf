resource "azurerm_public_ip_prefix" "KBPublic" {
  name                = "acceptanceTestPublicIpPrefix1"
  location            = var.location
  resource_group_name = azurerm_resource_group.net.name

  prefix_length = 29
}
