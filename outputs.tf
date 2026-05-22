output "instance_id" {
  description = "EC2 instance ID"
  value       = module.ec2_instance.instance_id
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = module.ec2_instance.private_ip
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2_instance.public_ip
}