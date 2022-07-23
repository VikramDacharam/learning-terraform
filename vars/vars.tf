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

# list variable type
variable "Sample4" {
  default = [
  "Hello",
    1000,
    true,
    "world"
  ]
}
#Map variable Type
variable "Sample5" {
  default = {
    string = "Hello world",
    number = 100,
    boolean = true
  }
}

output "values-in-list" {
  value = var.Sample4[3]
}
output "values-in-map" {
  value = var.Sample5["number"]
}