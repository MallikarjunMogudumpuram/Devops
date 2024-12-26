variable "s1" {
  default = "Hello"
}

variable "n1" {
  default = 2
}

variable "d1" {
  default = true
}

#data types that terraform supports

#1. strings
#2. values
#3. Boolean

#Note: string only support quotes, that too double quotes, terraform does not support single quotes.

variable "b1" {
  default = "Hello"
}

variable "e1" {
  default = ["Hello", 2, true]
}

variable "g1" {
  default = {
    Course = "devops"
    Correct = true
  }

}

#variable type that supports terraform
#1. plain
#2. list - A key that have multiple values it supports different data types
#3. Map - A key having and key and values

#accessing a variable
output "o1"{
  value = var.b1
}

#while accessing a variable if we have some string combination then we can use it $[{}
output "o2"{
  value = "${var.b1} - John"
}

#access a list of values

output "o3"{
  value = var.e1[0]
}

output "o4"{
  value = var.g1["Course"]
}

#we are hardcoded all variables but most time it comes as input
#values from terraform tfvars terraform only pics from terraform.tfvars, incase if we want from others we have to parse
variable "z1" {}

output "o5"{
  value = var.z1
}

# we can also access from other tfvars but we have to parse it.
#eg:

variable "env" {}
output "o6"{
  value = var.env
}

#terraform can pick files automatically if the files are *.auto.tfvars

