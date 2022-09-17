variable "userage" {
  type = map
  default = {
    gaurav = 20
    saurav = 19
  }
}

variable "username" {
  type = string
}

output "user" {
  value = "My name is ${var.username} and my age is "
}

# output
# userage = "My name is gaurav and my age is "

output "userandage" {
  value = "My name is ${var.username} and my age is ${lookup(var.userage, "${var.username}")}"
}

# output
# userandage = "My name is saurav and my age is 19"