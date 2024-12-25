variable "s1" {
  default = "Hello"
}

variable "n1" {
  default = 2
}

variable "d1" {
  default = True
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
  default = [Hello, 2, False]
}

variable "g1" {
  default = {
    Course = "devops"
    Correct = False
  }

}

#variable type that supports terraform
#1. plain
#2. list - A key that have multiple values it supports different data types
#3. Map - A key having and key and values

#accessing a variable

output "b1" {
  value = "var.b1"
}

#while accessing a variable if we have some string combination then we can use it $[{}
output "e1" {
  value = "${var.b1} - John"
}


