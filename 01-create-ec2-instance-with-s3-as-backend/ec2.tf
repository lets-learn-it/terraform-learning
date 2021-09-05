resource "aws_instance" "my_ec2" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = var.tags
}