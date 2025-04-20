terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0.0"
    }
  }

  backend "s3" {
    bucket         = "mockhackathon-uc05"
    key            = "terraform"
    region         = "eu-north-1"
  }
}

provider "aws" {
  region = "eu-north-1"
}