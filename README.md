# Terraform

##3Variable.tf
**In case if you want to pass variable from command you can do it by**
-terraform plan -var "username=NitishKumar"
**In case if you want to pass multiple values through cmd**
-terraform plan -var "username=NK" -var "xyz=NitishKumar"
Terraform commands:

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
