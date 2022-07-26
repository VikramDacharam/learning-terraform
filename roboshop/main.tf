module "common" {
  for_each = var.COMPONENTS
  // count = length(var.COMPONENTS)
  source = "./common"
  INSTANCE_TYPE = "t3.micro"
  AMI = "ami-077bb1f989e30b12c"
  COMPONENT = each.value["name"]
  PORT = each.value["port"]
}