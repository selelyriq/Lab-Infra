terraform {
  required_providers {
    terraform = {
      source  = "hashicorp/terraform"
      version = "~> 1.8.0"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}
