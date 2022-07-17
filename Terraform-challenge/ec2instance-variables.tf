variable "instance_type" {
  type        = string
  default     = "t3.small"
  description = "Ec2 Instance Type"
}

variable "instance_keypair" {
  type        = string
  default     = "eks-terraform-key"
  description = "AWS Ec2 instance Key pair"
}

