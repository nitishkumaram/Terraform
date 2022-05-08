variable "username" {
  
}

output "printname" {
  value = "Hello, ${var.username}"
}

# Default Value
variable "xyz" {
  type = string
  default = "world!!!"
}

output "wxy" {
  value = "Hello, ${var.xyz}"
}