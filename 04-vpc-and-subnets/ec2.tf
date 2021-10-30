module "private_ec2" {
  source = "./ec2/"

  key         = "~/.ssh/id_rsa.pub"
  unique_name = "private_ec2"
  vpc_id      = aws_vpc.main.id
  subnet_id   = aws_subnet.private_1.id
  igress_cidr = [aws_subnet.public_1.cidr_block, aws_subnet.public_2.cidr_block, aws_subnet.public_3.cidr_block]
}

module "public_ec2" {
  source = "./ec2/"

  key         = "~/.ssh/id_rsa.pub"
  unique_name = "public_ec2"
  vpc_id      = aws_vpc.main.id
  subnet_id   = aws_subnet.public_1.id
  igress_cidr = ["0.0.0.0/0"]
}