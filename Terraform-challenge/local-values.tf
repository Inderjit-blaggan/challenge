# Define Local Values in Terraform
locals {
  environment = var.env_type
  name = "${var.Project}-${var.env_type}"
  common_tags = {
    environment = local.environment 
    Project =   var.Project 
  }
}