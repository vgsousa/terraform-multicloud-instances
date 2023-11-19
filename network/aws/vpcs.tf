resource "aws_vpc" "aws_vpc_terraform" {
  cidr_block = "${var.cidr_vpc}"

  tags = {
    Name = "vpc-${var.service_name}"
  }
}