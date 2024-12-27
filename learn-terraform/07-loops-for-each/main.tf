resource "local_file" "foo" {
  for_each = var.demo
  content  = each.value["content"]
  filename = "/tmp/${each.key}"
}

variable "demo" {
  default  = {
    APPLE  = {
      content = "good for health"}
    MANGO  = {
      content = "good for vitamin"}
    ORANGE = {
      content = "good for vitaminc"}
  }
}