# we will allow all outgoing from igw for public subnet
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0" // internet
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "public_route_table"
  }
}

resource "aws_route_table_association" "public_1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "public_2" {
  subnet_id      = aws_subnet.public_2.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "public_3" {
  subnet_id      = aws_subnet.public_3.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.natgw.id
  }

  tags = {
    Name = "private_route_table"
  }
}

resource "aws_route_table_association" "priavte_1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "priavte_2" {
  subnet_id      = aws_subnet.private_2.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_route_table_association" "priavte_3" {
  subnet_id      = aws_subnet.private_3.id
  route_table_id = aws_route_table.private_route.id
}
