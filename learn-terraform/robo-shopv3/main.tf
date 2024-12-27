module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size   = each.value["vm_size"]

}

variable "components" {
  default =
  {
    front-end = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }

    catalouge = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }
    cart      = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }
    mysql = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }
    rabit-mq = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }
    user = {
      name    = front-end
      vm_size = "Standard_DS1_v2"
    }

  }
}
