variable "sample" {
  default = "hello world"
}
output "sample" {
  value = var.sample
}

# String variables

variable "Sample1" {
  default = "Hello world"
}

# numbers variables
variable "Sample2" {
  default = 100
}
# boolean variables
variable "Sample3" {
  default = true
}