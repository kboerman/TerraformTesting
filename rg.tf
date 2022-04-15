resource "azurerm_resource_group" "VMs" {
  name     = "KB-resources-VM"
  location = var.location
}

resource "azurerm_resource_group" "net" {
  name     = "KB-resources-Net"
  location = var.location
}
