resource "aws_route_table" "aws_route_table_terraform" {
  vpc_id = aws_vpc.aws_vpc_terraform.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws_internet_gateway_terraform.id
  }

  tags = {
    Name = "route-table-${var.service_name}"
  }
}

# ROUTE_TABLE_ASSOCIATIONS

resource "aws_route_table_association" "aws_rta_terraform" {
  subnet_id      = aws_subnet.aws_subnet_terraform.id
  route_table_id = aws_route_table.aws_route_table_terraform.id
}

