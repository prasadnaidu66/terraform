variable "CLASSES" {
  default = ["aws","azure"]
}

output "FIRST_VAR" {
  value = var.CLASSES[0]
}
output "SECOND_VAR" {
  value = var.CLASSES[1]
}
