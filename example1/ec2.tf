resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-077bb1f989e30b12c"
  vpc_security_group_ids = [aws_security_group.allow_ec2.id]
}
provider "aws" {
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.14.0"
    }
  }
}