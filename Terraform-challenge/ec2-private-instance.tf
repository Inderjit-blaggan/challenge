# Private Instance inside the private subnet
module "ec2_private_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "3.6.0"

  name                   = "${local.name}-private-VM"
  ami                    = data.aws_ami.aws_linux_ami.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  #monitoring             = true
  subnet_id            = module.vpc.private_subnets[0]
  user_data = file("${path.module}/app-files.sh")
  vpc_security_group_ids = [module.private_security_group.this_security_group_id]
  tags = local.common_tags
  depends_on = [ module.vpc ]
}