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
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0108d6a82a783b352"
  instance_type = "t2.micro"
  subnet_id = "${var.subnet_prv1}"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}
