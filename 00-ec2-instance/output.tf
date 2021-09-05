output "arn" {
  value = aws_instance.my_ec2.arn
}

output "public_ip" {
  value = aws_instance.my_ec2.public_ip
}

