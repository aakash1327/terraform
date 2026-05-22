module "ec2_instance" {
  source = "./modules/ec2"

  instance_name          = var.instance_name
  ami_id                 = var.ami_id
  instance_type          = var.instance_type
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name               = var.key_name

  associate_public_ip_address = var.associate_public_ip_address

  root_volume_size = var.root_volume_size
  root_volume_type = var.root_volume_type

  tags = var.tags
}
