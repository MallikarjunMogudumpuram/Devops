data "azurerm_resource_group" "practise" {
  name = "project-setup"
}

data "azurerm_subnet" "example" {
  name                 = "default"
  virtual_network_name = "vnet1"
  resource_group_name  = data.azurerm_resource_group.practise.name
}

