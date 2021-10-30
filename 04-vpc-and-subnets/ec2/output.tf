output "ec2_ip" {
  value = aws_instance.my_ec2.public_ip
}