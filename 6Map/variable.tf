variable "userage" {
  type = map
  default = {
      gaurav = 20
      saurav = 19
  }
}

variable "username" {
  type=string
}

output "userageout" {
  value = "My name is ${var.username} and my age is ${lookup(var.userage, "${var.username}")}"
}