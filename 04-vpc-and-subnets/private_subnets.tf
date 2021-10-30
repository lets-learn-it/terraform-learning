resource "aws_subnet" "private_1" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.4.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "private_1"
  }
}

resource "aws_subnet" "private_2" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.5.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1b"

  tags = {
    Name = "private_2"
  }
}

resource "aws_subnet" "private_3" {
  vpc_id                  = aws_vpc.main.id
  cidr_block              = "10.0.6.0/24"
  map_public_ip_on_launch = false
  availability_zone       = "ap-south-1c"

  tags = {
    Name = "private_3"
  }
}