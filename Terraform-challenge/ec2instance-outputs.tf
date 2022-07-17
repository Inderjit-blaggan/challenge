output "ec2_public_instance_id" {
  description = "The ID of the instance"
  value       = module.ec2_public_instance.id
}

output "ec2_public_instance_public_dns" {
  description = "The public DNS name assigned to the instance"
  value       = module.ec2_public_instance.public_dns
}

output "ec2_public_instance_public_ip" {
  description = "The public IP address assigned to the instance"
  value       = module.ec2_public_instance.public_ip
}

## ec2_bastion_public_ip
output "ec2_bastion_eip" {
  description = "Elastic IP associated to the Bastion Host"
  value       = aws_eip.bastion_eip.public_ip
}

output "ec2_private_instance_id" {
  description = "The ID of the instance"
  value       = module.ec2_private_instance.id
}


output "ec2_private_instance_private_ip" {
  description = "The public IP address assigned to the instance"
  value       = module.ec2_private_instance.private_ip
}
