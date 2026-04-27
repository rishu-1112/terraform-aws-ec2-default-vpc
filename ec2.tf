

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
  ami           = "ami-0e12ffc2dd465f6e4"
  instance_type = "t3.micro"
  key_name = "my-key-pair"

  vpc_security_group_ids = [data.aws_security_group.default.id]

  root_block_device {
    volume_size = 10
    volume_type = "gp3"
  }

  tags = {
    Name = "created-by-terraform"
  }
}
