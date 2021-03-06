resource "azurerm_windows_virtual_machine" "ProdServer" {

  for_each = toset(var.vm_name_server)
  name                = each.value
  resource_group_name = azurerm_resource_group.Prod-VM.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "Kevin"
  admin_password      = "Trojans010!@"
   network_interface_ids = [azurerm_network_interface.ProdKBnicServer[each.key].id]
  

  os_disk {
    name = "${each.key}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  
   source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2022-Datacenter"
    version   = "latest"
  }
}

resource "azurerm_windows_virtual_machine" "Prodvm" {

  for_each = toset(var.vm_name_desk)
  name                = each.value
  resource_group_name = azurerm_resource_group.Prod-VM.name
  location            = var.location
  size                = "Standard_DS1_v2"
  admin_username      = "Kevin"
  admin_password      = "Trojans010!@"
   network_interface_ids = [azurerm_network_interface.ProdKBnicDesktop[each.key].id]
  

  os_disk {
    name = "${each.key}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  
   source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "windows-11"
    sku       = "win11-21h2-pro"
    version   = "latest"
  }
}