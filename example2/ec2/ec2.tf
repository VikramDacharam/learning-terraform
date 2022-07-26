resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-077bb1f989e30b12c"
  vpc_security_group_ids = [var.SG_ID]
}
variable "SG_ID" {}
