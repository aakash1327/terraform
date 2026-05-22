variable "instance_name" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "key_name" {
  type    = string
  default = null
}

variable "associate_public_ip_address" {
  type    = bool
  default = true
}

variable "root_volume_size" {
  type    = number
  default = 30
}

variable "root_volume_type" {
  type    = string
  default = "gp3"
}

variable "tags" {
  type    = map(string)
  default = {}
}