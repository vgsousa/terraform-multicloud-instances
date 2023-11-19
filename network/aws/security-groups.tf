resource "aws_security_group" "aws_security_group_terraform" {
  name        = "security-group-${var.service_name}"
  description = "Permitir acesso na porta 22"
  vpc_id      = aws_vpc.aws_vpc_terraform.id

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-group-${var.service_name}"
  }
}
