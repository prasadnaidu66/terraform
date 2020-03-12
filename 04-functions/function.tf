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
  RESOURCE_LC = "${var.PROJECT}-${var.ACTION}-${var.ENV}"
  RESOURCE_UP = "${upper(var.PROJECT)}-${var.ACTION}-${var.ENV}"
}

output "R1" {
  value = local.RESOURCE_LC
}
output "R2" {
  value = local.RESOURCE_UP
}