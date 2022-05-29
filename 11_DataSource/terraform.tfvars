port = [22, 80, 443, 3306, 27017, 1080]
# image_id      = "ami-09d56f8956ab235b3"
instance_type    = "t2.micro"
region           = "us-east-1"

image_name       = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
vert_name        = "hvm"
root_device_type = "ebs"
