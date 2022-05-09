# If you want to define environment variable on command prompt OR terraform configuration, Run below command
# export TF_VAR_username=Nitish
# terraform plan 
# OUTPUT ------>   + printname = "Hello, Nitish"

variable "username" {
  
}

output "printname" {
  value = "Hello, ${var.username}"
}