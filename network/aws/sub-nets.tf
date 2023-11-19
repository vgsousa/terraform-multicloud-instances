resource "aws_subnet" "aws_subnet_terraform" {
  vpc_id     = aws_vpc.aws_vpc_terraform.id
  cidr_block = "${var.cidr_subnet}"

  tags = {
    Name = "subnet-${var.service_name}"
  }
}
