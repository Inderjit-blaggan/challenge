
output "public_security_group_id" {
  description = "Public security group id"
  value       = module.public_security_group.this_security_group_id

}

## ec2_bastion_public_ip
output "private_security_group_id" {
  description = "Private security group id"
  value       = module.private_security_group.this_security_group_id

}