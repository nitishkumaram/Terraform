terraform {
  # backend "s3" {
  #     bucket = "nitish-bucket-tf"
  #     region = "us-east-1"
  #     key = "terraform.tfstate"
  # }

# For the state Locking
  backend "s3" {
      bucket = "nitish-bucket-tf"
      region = "us-east-1"
      key = "terraform.tfstate"
      dynamodb_table = "nitish-table-tf"
  }
}

variable "access_key" {
  type = string
  default = "XYZ"
}

variable "secret_key" {
  type = string
  default = "XYZ"
}

provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "web" {
  ami = "ami-09d56f8956ab235b3"
  instance_type = "t2.micro"
}

