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
  RESOURCE_UC = "${var.PROJECT}-${var.ACTION}-${var.ENV}"
  RESOURCE_LC = "${lower(var.PROJECT)}-${lower(var.ACTION)}-${lower(var.ENV)}"
}

output "R1" {
  value = local.RESOURCE_UC
}
output "R2" {
  value = local.RESOURCE_LC
}


