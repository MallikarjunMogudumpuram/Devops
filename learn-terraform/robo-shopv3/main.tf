module "components" {
  for_each = var.components
  source = "./vm"
  component = each.value["name"]
  vm_size   = each.value["vm_size"]

}
variable "components" {
  default = {
    value = front-end
    value = catalouge
    value = cart
    value = mysql
    value = rabbitmq

  }
}