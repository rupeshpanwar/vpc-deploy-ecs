provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {}
}


locals {
     prefix = "${var.prefix}-${var.environment}" #-${terraform.workspace}"
    common_tags = {
      Environment = var.environment  #terraform.workspace
      Project = var.project
      Owner = var.contact
      ManagedBy = "Terraform"
    }
}





