region = "eu-central-1"
######################### VPC #########################

tags_vpc = {
  "Name"        = "VPC Terraform"
  "application" = "SMS Terraform Modules"
  "client"      = "SMS"
  "environment" = "Development"
  "project"     = "SMS"
  "Terraform"   = "true"
}

vpc_name           = "VPC Integracion"
vpc_cidr           = "10.10.0.0/16"
azs                = ["eu-central-1a", "eu-central-1b"]
public_subnets     = ["10.10.0.0/24", "10.10.1.0/24"]
private_subnets    = ["10.10.2.0/24", "10.10.3.0/24"]
enable_nat_gateway = true
single_nat_gateway = true
create_vpc         = false

iam_tags = {
  "Name"        = "VPC Terraform"
  "application" = "SMS Terraform Modules"
  "client"      = "SMS"
  "environment" = "Development"
  "project"     = "SMS"
  "Terraform"   = "true"
}

ecs_name = "ECS_Demo"