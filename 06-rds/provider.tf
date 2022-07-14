provider "aws" {
  region = "ap-south-1"
}

terraform {
  required_providers {
    aws = {
      source  = "aws"
      version = "4.0.0"
    }
  }

  required_version = "~> 1.1.0"
}