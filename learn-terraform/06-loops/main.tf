# resource "null_resource" "demo" {
#   count = 10
#
# }


resource "null_resource" "demo" {
  count = length(var.practise)

  provisioner "local-exec" {
    count = "echo $(var.practise[count.index]"
  }
}

variable "practise" {
  default = [
  "apple", "orange", "banana"]
}