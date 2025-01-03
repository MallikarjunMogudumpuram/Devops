resource "azurerm_public_ip" "practise" {
name                = "${var.component}-ip"
resource_group_name = data.azurerm_resource_group.main.name
location            = data.azurerm_resource_group.main.location
allocation_method   = "Static"
  tags = {
    environment = "staging"
  }
}

resource "azurerm_network_interface" "main" {
  name                = "${var.component}-nic"
  location            = data.azurerm_resource_group.main.location
  resource_group_name = data.azurerm_resource_group.main.name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.practise.id
  }
}

resource "azurerm_virtual_machine" "main" {
   name                  = "${var.component}-nic"
   location              = data.azurerm_resource_group.main.location
   resource_group_name   = data.azurerm_resource_group.main.name
   network_interface_ids = [azurerm_network_interface.main.id]
   vm_size               = "Standard_DS1_v2"

# Uncomment this line to delete the OS disk automatically when deleting the VM
   delete_os_disk_on_termination = true

# Uncomment this line to delete the data disks automatically when deleting the VM
# delete_data_disks_on_termination = true

 storage_image_reference {
   publisher = "Canonical"
   offer     = "0001-com-ubuntu-server-jammy"
   sku       = "22_04-lts"
   version   = "latest"
}
storage_os_disk {
   name              = var.component
   caching           = "ReadWrite"
   create_option     = "FromImage"
   managed_disk_type = "Standard_LRS"
}

 os_profile {
   computer_name  = "hostname"
   admin_username = "testadmin"
   admin_password = "Password1234!"
}

 os_profile_linux_config {
   disable_password_authentication = false
}

tags = {
   environment = "staging"
}

}


































# output "rg" {
#    value = data.azurerm_resource_group.example
# }
#
# #configure the microsoft azure provider
#
# provider "azurerm" {
#    features {}
#    subscription_id = "c1585f6e-0e58-456f-aed6-fc7b78c32d7c"
# }



# output "rg" {
#    value = data.azurerm_resource_group.example
# }
#
# #configure the microsoft azure provider
#
# provider "azurerm" {
#    features {}
#    subscription_id = "c1585f6e-0e58-456f-aed6-fc7b78c32d7c"
# }