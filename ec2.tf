

# Default VPC
data "aws_vpc" "default" {
  default = true
}

# Default security group
data "aws_security_group" "default" {
  name   = "default"
  vpc_id = data.aws_vpc.default.id
}

# EC2 instance
resource "aws_instance" "my_ec2_instance" {
  ami           = var.ec2-ami
  instance_type = var.ec2-type
  key_name = var.ec2-key-name

  vpc_security_group_ids = [data.aws_security_group.default.id]
  user_data = file("nginx-install.sh")

  root_block_device {
    volume_size = var.ec2-root-block-device["volume_size"]
    volume_type = var.ec2-root-block-device["volume_type"]
  }

  tags = {
    Name = var.ec2-tags["Name"]
  }
}
