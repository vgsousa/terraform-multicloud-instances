variable "cidr_vpc" {
  description = "Cidr para a VPC criada na AWS"
  type        = string
}

variable "cidr_subnet" {
  description = "Cidr para a Subnet criada na AWS"
  type        = string
}

variable "service_name" {
  description = "Nome dos recursos a serem criados"
  type        = string
}