
# Terraform Block
# Over here we are fixing the version to 0.14 and minor version will be upgraded by provider for 0.14 version
terraform {
    required_version = "~> 0.14.10"
    required_providers {
        aws = {
            version = "~> 3.0"
            source = "hashicorp/aws"
        }
    }
}


# Provider Block
provider "aws" {
    region  = var.aws_region
    profile = "default"
}