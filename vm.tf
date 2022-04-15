resource "azurerm_windows_virtual_machine" "vm" {

  for_each = toset(var.vm_name)
  name                = each.value
  resource_group_name = azurerm_resource_group.VMs.name
  location            = var.location
  size                = "Standard_F2"
  admin_username      = "Kevin"
  admin_password      = "Trojans010!@"
   network_interface_ids = [azurerm_network_interface.KBnic[each.key].id]
  

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