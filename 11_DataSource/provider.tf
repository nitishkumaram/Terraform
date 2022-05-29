provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"]

  # name = ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-20220420
  # Root Device Type = EBS
  # Virtualization Type = hvm
  filter {
    name   = "name"
    values = ["${var.image_name}"]
  }
  filter {
    name   = "virtualization-type"
    values = ["${var.vert_name}"]
  }
  filter {
    name   = "root-device-type"
    values = ["${var.root_device_type}"]
  }
}

output "ami_id" {
  value = data.aws_ami.ubuntu.id
}
