# resource "null_resource" "demo" {
#   count = 10
#
# }


resource "null_resource" "demo" {
  count = length(var.practise)

  provisioner "local-exec" {
    command = "echo ${var.practise[count.index]}"
  }
}
resource "local_file" "foo" {
  count    = length(var.practise)
  content  = var.practise[count.index]
  filename = "/tmp/file-$(count.index)"
}
variable "practise" {
  default = ["lemon","orange", "banana"]
}