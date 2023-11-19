terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.25.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.80.0"
    }
  }

  backend "s3" {
    bucket = "vgsousa-terraform-remote-state"
    key    = "multicloud-instances/terraform.tfstate"
    region = "us-east-1"
  }
}

module "aws_network" {
  source = "./network/aws"

  cidr_vpc     = "10.0.0.0/16"
  cidr_subnet  = "10.0.1.0/24"
  service_name = var.service_name
}

module "azure_network" {
  source = "./network/azure"

  cidr_vpc        = "10.0.0.0/16"
  cidr_subnet     = "10.0.1.0/24"
  service_name    = var.service_name
  location_region = var.location_azure_region
}