terraform {
  required_version = "1.3.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.41.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "my-first-ec2-tf" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  tags          = var.instance_tags
}