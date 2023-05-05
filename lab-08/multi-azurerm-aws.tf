terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "aws" {
  region = "us-east-2"
}

#Other files would then define the variables and other values. 
resource "azurerm_resource_group" "hubrg" {
  name     = "hub-rg-${var.azure_region}"
  location = var.azure_region
}
