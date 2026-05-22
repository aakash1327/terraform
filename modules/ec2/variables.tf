variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for EC2"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for EC2"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to assign public IP"
  type        = bool
  default     = false
}

variable "root_volume_size" {
  description = "Root EBS volume size"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Root EBS volume type"
  type        = string
  default     = "gp3"
}

variable "tags" {
  description = "Tags to apply"
  type        = map(string)
  default     = {}
}