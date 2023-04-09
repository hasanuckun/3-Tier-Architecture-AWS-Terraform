build ohio:
	terraform workspace new ohio || terraform workspace select ohio && terraform init && terraform apply -var-file env/us-east-2/ohio.tfvars 

destroy ohio:
	terraform destroy -var-file env/us-east-2/ohio.tfvars -auto-approve
