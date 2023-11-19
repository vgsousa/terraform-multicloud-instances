resource "aws_internet_gateway" "aws_internet_gateway_terraform" {
  vpc_id = aws_vpc.aws_vpc_terraform.id

  tags = {
    Name = "internet-gateway-${var.service_name}"
  }
}