resource "azurerm_windows_virtual_machine" "Test-Server" {

  for_each = toset(var.vm_name_server_test)
  name                = each.value
  resource_group_name = azurerm_resource_group.Test-VM.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "Kevin"
  admin_password      = "Trojans010!@"
   network_interface_ids = [azurerm_network_interface.TestKBnicServer[each.key].id]
  

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

resource "azurerm_windows_virtual_machine" "Test-VM" {

  for_each = toset(var.vm_name_desk_test)
  name                = each.value
  resource_group_name = azurerm_resource_group.Test-VM.name
  location            = var.location
  size                = "Standard_DS1_v2"
  admin_username      = "Kevin"
  admin_password      = "Trojans010!@"
   network_interface_ids = [azurerm_network_interface.TestKBnicDesktop[each.key].id]
  

  os_disk {
    name = "${each.key}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  
   source_image_reference {
    publisher = "MicrosoftWindowsDesktop"
    offer     = "Windows-11"
    sku       = "win11-21h2-pro"
    version   = "latest"
  }
}