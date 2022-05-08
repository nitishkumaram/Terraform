variable "username" {
  type= string
}

variable "age" {
  type=number
}

output "username" {
  value = "My environment is ${var.username} and total apps deployed are ${var.age}"
}