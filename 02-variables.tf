variable "region" {
  default     = "us-east-2"
  description = "AWS Region"
}

# tagging
variable "prefix" {
    default = "proj-short-name"
}

variable "project" {
    default = "projectname"
}

variable "contact" {
    default = "rpanwar@msystechnologies.com"
}

variable "environment" {
  description = "environment"
}


# vpc cidr
variable "vpc_cidr" {
  description = "CIDR Block for VPC"
}

variable "public_subnet_1_cidr" {
  description = "CIDR Block for Public Subnet 1"
}

variable "public_subnet_2_cidr" {
  description = "CIDR Block for Public Subnet 2"
}


variable "private_subnet_1_cidr" {
  description = "CIDR Block for Private Subnet 1"
}

variable "private_subnet_2_cidr" {
  description = "CIDR Block for Private Subnet 2"
}

