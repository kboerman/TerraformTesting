resource "azurerm_network_interface" "ProdKBnicServer"{
    for_each = toset(var.vm_name_server)
    name = each.value
    location = var.location
    resource_group_name = azurerm_resource_group.Prod-VM.name

    ip_configuration {
        name = "ipconfig1"
        subnet_id = azurerm_subnet.NL-Subnet-Prod.id
        private_ip_address_allocation = "Dynamic"
        
    }
}

resource "azurerm_network_interface" "ProdKBnicDesktop"{
    for_each = toset(var.vm_name_desk)
    name = each.value
    location = var.location
    resource_group_name = azurerm_resource_group.Prod-VM.name

    ip_configuration {
        name = "ipconfig1"
        subnet_id = azurerm_subnet.NL-Subnet-Prod.id
        private_ip_address_allocation = "Dynamic"
        
    }
}

resource "azurerm_network_interface" "TestKBnicServer"{
    for_each = toset(var.vm_name_server_test)
    name = each.value
    location = var.location
    resource_group_name = azurerm_resource_group.Test-VM.name

    ip_configuration {
        name = "ipconfig1"
        subnet_id = azurerm_subnet.NL-Subnet-Test.id
        private_ip_address_allocation = "Dynamic"
        
    }
}

resource "azurerm_network_interface" "TestKBnicDesktop"{
    for_each = toset(var.vm_name_desk_test)
    name = each.value
    location = var.location
    resource_group_name = azurerm_resource_group.Test-VM.name

    ip_configuration {
        name = "ipconfig1"
        subnet_id = azurerm_subnet.NL-Subnet-Test.id
        private_ip_address_allocation = "Dynamic"
        
    }
}