module "common" {
  for_each = var.COMPONENTS
  // count = length(var.COMPONENTS)
  source = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI = "ami-0bb6af715826253bf"
  COMPONENT = each.value["name"]
  PORT = each.value["port"]
}