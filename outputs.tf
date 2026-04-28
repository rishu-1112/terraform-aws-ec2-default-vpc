output "ec2-public-ip" {
  value = aws_instance.my_ec2_instance.public_ip
}

output "ec2-private-ip" {
  value = aws_instance.my_ec2_instance.private_ip
}

output "ec2-dns-name" {
  value = aws_instance.my_ec2_instance.public_dns
}