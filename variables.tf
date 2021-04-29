variable "region" {
  description = "AWS Region"
  type        = string
}

######################### VPC #########################
variable "vpc_name" {
  description = "VPC Name"
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string
}

variable "azs" {
  description = "AWS Availavility Zones"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private Subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public Subnets"
  type        = list(string)
}

variable "enable_nat_gateway" {
  description = "Enable NATGateway (true / false)"
  type        = bool
}

variable "single_nat_gateway" {
  description = "Single NATGateway (true / false)"
  type        = bool
}

variable "create_vpc" {
  type        = bool
  description = "Create VPC(true / false)"
}

variable "tags_vpc" {
  type        = map(string)
  description = "VPC Tags"
}
