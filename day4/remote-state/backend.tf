terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.42.0"
    }
  }

  backend "s3" {
    bucket = "cloud-terraform-stat-lab"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}