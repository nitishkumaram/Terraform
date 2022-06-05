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
- terraform graph | dot -Tpdf > graph.pdf #Graphviz should be installed in your system

--------------------------------------------------------------------------

# WORKSPACE
- terraform workspace -help
- terraform plan --var-file dev-terraform.tfvars
- terraform workspace show
- terraform workspace new dev
- terraform workspace select dev
- terraform workspace list
- terraform workspace delete prod
- terraform apply --auto-approve --var-file dev-terraform.tfvars
- terraform workspace delete dev

--------------------------------------------------------------------------

# MODULES

- terraform init
- The module installer supports installation from a number of different source types, as listed below.
1 Local paths
2 Terraform Registry
3 GitHub
4 Bitbucket
5 Generic Git, Mercurial repositories
6 HTTP URLs
6 S3 buckets
7 GCS buckets
8 Modules in Package Sub-directories
- URL requires of above sources in module source parameter.

# AWS CLI

- aws configure
- /Users/nitishkumar/.aws
- cat credential
- Provided S3 Full Permission in IAM

# Terraform Migrate Backend

- Comment out the backend section of code
- terraform init -migrate-state

# Remote Backend State Locking using S3 and DynamoDB

- dynamodb_table = "nitish-table-tf"
