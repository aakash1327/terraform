aws_region = "ap-south-1"

instance_name = "my-ec2-instance"
instance_type = "t2.micro"

key_name = "aakash-key"

associate_public_ip_address = true

root_volume_size = 30
root_volume_type = "gp3"

tags = {
  Environment = "dev"
  Project     = "terraform-ec2"
  Owner       = "Aakash"
}