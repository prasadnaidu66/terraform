variable "PROJECT" {
  default = "ROBOSHOP"
}

variable "ACTION" {
  default = "INSTALL"
}

variable "ENV" {
  default = "DEV"
}

locals{
   RESOURCE = "${var.PROJECT}-${var.ACTION}-${var.ENV}"
}

output "R1" {
  value = local.RESOURCE
}
output "R2" {
  value = local.RESOURCE
}