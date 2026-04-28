variable "ec2-type" {
  default = "t3.micro"
  type = string
}

variable "ec2-ami" {
  default = "ami-0e12ffc2dd465f6e4"
  type = string
}
variable "ec2-tags" {
  default = {
    Name = "created-by-terraform"
  }
  type = map(string)
}

variable "ec2-key-name" {
  default = "my-key-pair"
  type = string
}

variable "ec2-root-block-device" {
  default = {
    volume_size = 10
    volume_type = "gp3"
  }
  type = map(any)
}