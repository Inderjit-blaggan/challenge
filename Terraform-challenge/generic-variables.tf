# AWS Region
variable "aws_region" {
  type        = string
  description = "Region for the AWS Resources"
  default     = "us-east-1"  
}

variable "env_type" {
  type        = string
  description = "Type of Enviroment to be build"
  default     = "dev"  
}

# Project Name
variable "Project" {
  description = "Project the stack is being created for inside the AWS account"
  type = string
  default = "SAP"
}

