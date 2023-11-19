resource "aws_key_pair" "key" {
  key_name   = "aws-key-${var.service_name}"
  public_key = "${var.aws_key_pub}"
}


resource "aws_instance" "instance_terraform" {
  ami                         = "ami-0fc5d935ebf8bc3bc"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.aws_network.aws_subnet_id
  vpc_security_group_ids      = [module.aws_network.aws_security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "instance-${var.service_name}"
  }
}
