resource "aws_instance" "sample" {
  instance_type = "t3.micro"
  ami           = "ami-0bb6af715826253bf"
  vpc_security_group_ids = [var.SG_ID]
}
variable "SG_ID" {}
