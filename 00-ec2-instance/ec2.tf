resource "aws_instance" "my_ec2" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.key.key_name
  security_groups = [aws_security_group.allow_ssh.name]

  tags = var.tags
}