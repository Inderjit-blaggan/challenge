# Creating a data source to get the latest aws linux 2 ami
data "aws_ami" "aws_linux_ami" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name = "architecture"
    values = [ "x86_64" ]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  
}