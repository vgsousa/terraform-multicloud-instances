output "instance_aws_ip" {
  description = "IP da máquina virtual criada na AWS"
  value       = aws_instance.instance_terraform.public_ip
}

output "instance_azure_ip" {
  description = "IP da máquina virtual criada na Azure"
  value       = azurerm_linux_virtual_machine.azure_instance_terraform.public_ip_address
}
