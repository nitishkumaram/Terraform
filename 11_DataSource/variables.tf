variable "port" {
  type = list(number)
}

# variable "image_id" {
#   type = string
# }

variable "instance_type" {
  type = string
}
variable "region" {
  type = string
}

variable "access_key" {
  type = string
}

variable "secret_key" {
  type = string
}

variable "image_name" {
  type = string
}

variable "vert_name" {
  type = string
}

variable "root_device_type" {
  type = string
}
