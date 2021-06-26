terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile    = "default"
  region     = "us-west-2"
}

resource "aws_instance" "test_app_server" {
  count                      = 1
  ami                        = "ami-0721c9af7b9b75114"
  instance_type              = "t2.micro"
  tags = {
    Name = "june-26-2021-test"
  }
}
