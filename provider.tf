provider "aws" {
  region = var.location_aws_region

  default_tags {
    tags = {
      owner      = "vgsousa"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}