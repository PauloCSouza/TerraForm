terraform {
  required_version = "1.3.5"

  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.41.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "my-first-bucket-s3-tf" {
  bucket = "my-first-bucket"
  acl    = "private"

  tags   = {
    Name        = "My Bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}