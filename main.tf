module "ec2_instance" {
  source = "./modules/ec2"

  instance_name          = var.instance_name
  ami_id                 = data.aws_ami.amazon_linux_2023.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.free_tier.id
  vpc_security_group_ids = [data.aws_security_group.default.id]
  key_name               = var.key_name

  associate_public_ip_address = var.associate_public_ip_address
  root_volume_size            = var.root_volume_size
  root_volume_type            = var.root_volume_type

  tags = var.tags
}

module "s3_bucket" {
  source = "./modules/s3"

  bucket_name = var.s3_bucket_name
  tags        = var.tags
}
