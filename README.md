 # Terraform scripts
This repo will allow the terraform modules to create a ECS Clusters:

 - VPC
 - IAM Roles
 - ECS Cluster
 - AutoScaling
 - ALB
 - Task Definitions
 - Services

 
# How to Execute
- terraform init
- terraform plan -var-file='vars.tfvars'
- terraform apply -var-file='vars.tfvars' -auto-approve
- terraform destroy -var-file='vars.tfvars' -auto-approve