# Creating EC2
resource "aws_instance" "web" {
  ami           = "ami-09d56f8956ab235b3"
  instance_type = var.instance_type

}
  