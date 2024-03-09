terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  # Specify your AWS access key ID and secret access key here
  access_key = "AKIASALHX3NT5K6QZD4Z"
  secret_key = "JMIl58di1EcsXnwV6pY7DJ0xoOGsvtOPq3egGeqi"
}

resource "aws_instance" "Mumbai-1" {
  ami           = "ami-03bb6d83c60fc5f7c"
  instance_type = "t2.micro"
  
  tags = {
    Name = "server1"
  }
}
