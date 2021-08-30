terraform plan -out ./dev/dev.tfplan \
	-state ./dev/dev.tfstate \
	-var-file ./dev/dev.tfvars

terraform apply -state ./dev/dev.tfstate ./dev/dev.tfplan