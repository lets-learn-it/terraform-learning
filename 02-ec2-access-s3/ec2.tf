resource "aws_instance" "my_ec2" {
  ami                  = var.ami_id
  instance_type        = "t2.micro"
  key_name             = aws_key_pair.key.key_name
  security_groups      = [aws_security_group.allow_ssh.name]
  iam_instance_profile = aws_iam_instance_profile.test_profile.name

  tags = var.tags
}