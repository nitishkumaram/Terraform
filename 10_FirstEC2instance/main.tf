# Creating EC2
resource "aws_instance" "web" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.my_security_group.id}"]
  tags = {
    Name = "tf-instance"
  }
  user_data = file("${path.module}/script.sh")

  # user_data = <<EOF
  # #!/bin/bash
  # sudo apt-get update
  # sudo apt-get install nginx -y
  # sudo echo "Hi Nitish !!" > /var/www/html/index.nginx-debian.html
  # EOF

  #file provisioner, remote-exec

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("${path.module}/id_rsa")
    host        = aws_instance.web.public_ip
  }

# If you want to move file
  provisioner "file" {
    source      = "script.sh"     #from local workspace
    destination = "/tmp/script.sh" #remote AWS machine
  }

  # If you want to create a file and put content
  provisioner "file" {
    content     = "This is Nitish"  #from local workspace
    destination = "/tmp/content.sh" #remote AWS machine
  }

  # if you want to copy folder into the dest
  provisioner "file" {
    source = "MyFile/"
    destination = "/tmp/MyFile"
  }

  # local-exec Provisioner
  
}
