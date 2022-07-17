# Bastion Host - EC2 Instance that will be created in VPC Public Subnet
module "ec2_public_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.6.0"

  name                   = "${local.name}-BastionHost"
  ami                    = data.aws_ami.aws_linux_ami.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id              = module.vpc.public_subnets[0]
  vpc_security_group_ids = [module.public_security_group.this_security_group_id]
  tags = local.common_tags
  depends_on = [ module.vpc ]
}

# Elastic IP for ec2 instance
resource "aws_eip" "bastion_eip" {
  depends_on = [module.ec2_public_instance]
  instance = module.ec2_public_instance.id
  vpc = true 
  tags = local.common_tags

}