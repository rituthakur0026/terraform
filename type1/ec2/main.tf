terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.3.0"
}

provider "aws" {
  region = "ap-south-1"   # Mumbai region
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-02b8269d5e85954ef"   # Ubuntu
  instance_type = "t3.micro"

  tags = {
    Name = "tcsarms"
  }
}

