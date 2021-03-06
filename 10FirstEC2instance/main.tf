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

  # local-exec Provisioner- Coomand is mandatory
  provisioner "local-exec" {
    command = "echo ${self.public_ip} > /tmp/mypublicip.txt"
  }

  provisioner "local-exec" {
    working_dir = "/tmp/"
    command = "echo ${self.public_ip} > /mypublicipintmp.txt"
  }

  provisioner "local-exec" {
    interpreter = [
      "/usr/bin/python", "-c"
    ]
    command = "print ('Hello World')"
  }

# Command to get the envname--> grep -i envname env.txt
  provisioner "local-exec" {
    # This command will ensure that terraform continue to create resource even if it fails to create this resource
    on_failure = continue 

    command = "env>env.txt"
    environment {
      envname = "envvalue"
    }
  }

  provisioner "local-exec" {
    command = "echo 'at Create'"
  }

  # This provisoner will run when it will encounter the destroy command
  provisioner "local-exec" {
    when = destroy
    command = "echo 'at destroy"
  }

  provisioner "remote-exec" {
    inline = [
      "ifconfig> /tmp/ifconfig.output",
      "echo 'Hello Nitish'>/tmp/test.txt"
    ]
  }

  provisioner "remote-exec" {
    script = "./testscript.sh"
  }

}
