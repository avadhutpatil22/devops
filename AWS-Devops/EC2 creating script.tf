terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAXVPXV3ZBYYM56R73"
  secret_key = "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"
}

resource "aws_instance" "ubuntu" {
  ami                     = "ami-0f5ee92e2d63afc18"
  instance_type           = "t2.micro"
}
