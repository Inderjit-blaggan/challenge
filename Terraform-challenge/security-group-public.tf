module "public_security_group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "3.18.0"
  name = "${local.name}-public-security-group"
  description = "Security Group with SSH port open for all  hosts"
  vpc_id = module.vpc.vpc_id
  # Ingress Rules & CIDR Blocks
  ingress_rules = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]
  # Egress Rule - all-all open
  egress_rules = ["all-all"]
  tags = local.common_tags
}