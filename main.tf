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
  access_key = "AKIAVGXJ5DZZFMDYDE5U"
  secret_key = "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"
}

resource "aws_instance" "test_app_server" {
  ami                        = "ami-0721c9af7b9b75114"
  instance_type              = "t2.micro"
  vpc_security_group_ids     = ["sg-bfb03b8a"]
  subnet_id                  = "subnet-46973d0c"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
