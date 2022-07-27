resource "aws_instance" "ec2" {
  instance_type          = var.INSTANCE_TYPE
  ami                    = var.AMI
  vpc_security_group_ids = [aws_security_group.allow_ec2.id]
}
  terraform {
    backend "s3" {
      bucket = "workstation123"
      key    = "roboshop/terraform.tfstate"
      region = "us-east-1"
    }

    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "= 4.14.0"
      }
    }
  }
  tags = {
    Name = var.COMPONENT
  }
