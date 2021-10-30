resource "aws_instance" "my_ec2" {
  ami             = var.ami_id
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.key.key_name
  subnet_id       = var.subnet_id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = var.tags

  depends_on = [
    aws_security_group.allow_ssh,
    aws_key_pair.key
  ]
}