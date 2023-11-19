output "aws_subnet_id" {
  description = "ID da Subnet criada na AWS"
  value       = aws_subnet.aws_subnet_terraform.id
}

output "aws_security_group_id" {
  description = "ID da Security Group criada na AWS"
  value       = aws_security_group.aws_security_group_terraform.id
}