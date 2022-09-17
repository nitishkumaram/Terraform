output "join" {
  value = "${join("-->",var.users)}"
}

output "uppercase" {
  value = "${upper(var.users[0])}"
}

output "lowercase" {
  value = "${lower(var.users[1])}"
}

output "titlecase" {
  value = "${title(var.users[2])}"
}
