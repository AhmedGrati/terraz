terraform init
terraform plan -out tfplan
terraform apply
terraform destroy
# for passing variables into cli: terraform plan -var "resource_group_name=default_var"