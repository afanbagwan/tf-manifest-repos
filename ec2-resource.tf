# Terraform Block Section
#Testing
terraform {
    required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.46.0"
    }
  }
}

# Provider Block
provider "aws" {
  region = "us-east-1"
}

# Resource Block
resource "aws_instance" "web_server" {
  ami = "ami-0b0dcb5067f052a63"
  instance_type = "t2.micro"
  tags = {
    "Name" = "Nova-WebServer"
  }
}
