module "front-end" {
   source    = "./vm"
   component = "front-end"
}

module "catalogue" {
   source    = "./vm"
   component = "catalogue"
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