# Terraform
## https://www.terraform.io/language/expressions/


- In case if you want to pass variable from command you can do it by
- terraform plan -var "username=NitishKumar"
- In case if you want to pass multiple values through cmd**
- terraform plan -var "username=NK" -var "xyz=NitishKumar"

- terraform apply
- terraform apply --auto-approve
- terraform destroy
- terraform destroy --target SOURCE_TYPE.localValue
- terraform plan
- terraform validate
- terraform refresh
- terraform show
- terraform output
- terraform console (for debugging)
- exit
- terraform fmt
- terraform providers

#TASK1-
- ssh-key -> first-key
- assign first key to newly created instance.
- create a security group
- assign that group to instance.
--------------------------------------------------------------------------
- terraform init
- value = file("${path.module}/file.txt") -to read the content of the file
- ssh -i id_rsa ubuntu@ip-address
- sudo -i
- apt-get update
- apt-get install nginx
- cd /var/www/html/
- echo "This is Nitish" > index.nginx-debian.html
--------------------------------------------------------------------------
#TASK 2-
- nginx install
- /var/www/html/index.nginx-debian.html -> This is Nitish

- terraform taint aws_security_group.my_security_group (to taint any resource)
- 