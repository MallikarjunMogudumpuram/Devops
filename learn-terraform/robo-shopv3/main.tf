module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size   = each.value["vm_size"]

}

variable "components" {
  default = {

    front-end = {
      name    = "front-end"
      vm_size = "Standard_DS1_v2"
    }

    catalouge = {
      name    = "catalouge "
      vm_size = "Standard_DS1_v2"
    }
    cart      = {
      name    = "cart"
      vm_size = "Standard_DS1_v2"
    }
    mysql = {
      name    = "mysql"
      vm_size = "Standard_DS1_v2"
    }
    rabit-mq = {
      name    = "rabit-mq"
      vm_size = "Standard_DS1_v2"
    }
    user = {
      name    = "user"
      vm_size = "Standard_DS1_v2"
    }

  }
}
