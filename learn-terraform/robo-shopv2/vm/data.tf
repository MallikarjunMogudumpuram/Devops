data "azurerm_resource_group" "practise" {
  name = "project-setup"
  location = "UK West"
}

data "azurerm_subnet" "example" {
  name                 = "default"
  virtual_network_name = "vnet1"
  resource_group_name  = data.azurerm_subnet.example.id
}

