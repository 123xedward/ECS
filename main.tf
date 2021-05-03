
provider "aws" {
  region = var.region
}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.78.0"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  single_nat_gateway = var.single_nat_gateway
  tags               = var.tags_vpc

  create_vpc = var.create_vpc

}

module "ecs" {
  source = "terraform-aws-modules/ecs/aws"
  version = "3.0.0"
  
  name = "my-ecs"

  container_insights = true

  capacity_providers = ["FARGATE", "FARGATE_SPOT"]

  default_capacity_provider_strategy = [
    {
      capacity_provider = "FARGATE_SPOT"
    }
  ]

  tags = {
    Environment = "Development"
  }
}

module "ecr" {
  source = "cloudposse/ecr/aws"
  version     = "0.32.2"
  namespace              = "eg"
  stage                  = "test"
  name                   = "ecr"
  enabled                 = true
}