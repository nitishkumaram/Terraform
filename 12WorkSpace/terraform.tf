# NOTE- We can't use variable in this page. e.g.- var.version

terraform {
  # Required version of TF
  required_version = "1.0.11"

  # Required version of AWS plugin
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.16.0"
    }
  }
}
