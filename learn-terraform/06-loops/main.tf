# resource "null_resource" "demo" {
#   count = 10
#
# }


resource "null_resource" demo {
  count = length(var.practise)
}


variable "practise" {
  default = [
  "apple", "orange", "banana"]
}