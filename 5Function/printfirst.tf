# https://www.terraform.io/language/functions
# zipmap is an important function

# Join Function
output printfirst {
  value= "${join("----->",var.users)}"
}

# UpperCase Function
output "uppercas" {
  value = "${upper(var.users[0])}"
}

# Lowercase Function
output "lowercas" {
  value= "${lower(var.users[1])}"
}

# Titlecase Function
output "titlecas" {
  value= "${title(var.users[2])}"
}