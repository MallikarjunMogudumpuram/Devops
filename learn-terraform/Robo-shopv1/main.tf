module "components" {
   for_each  = var.components
   source    = "./vm"
   component = each.value["name"]
   vm_size   = each.value["vm_size"]
}

variable "components" {
   default = {
      frontend = {
         name    = "frontend"
         vm_size = "Standard_DS1_v2"
      }
      mongodb = {
         name    = "mongodb"
         vm_size = "Standard_DS1_v2"
      }
      catalouge = {
         name    = "catalouge"
         vm_size = "Standard_DS1_v2"
      }
      user = {
         name    = "user"
         vm_size = "Standard_DS1_v2"
      }
      rabbitmq = {
         name    = "rabbitmq"
         vm_size = "Standard_DS1_v2"
      }
      cart = {
         name    = "cart"
         vm_size = "Standard_DS1_v2"
      }
      rediscache = {
         name    = "rediscache"
         vm_size = "Standard_DS1_v2"
      }
      mysql = {
         name    = "mysql"
         vm_size = "Standard_DS1_v2"
      }
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