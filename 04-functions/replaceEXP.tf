
locals {

 REPLACE = "${replace("1 + 2 + 3", "+", "-")}"
}

output "REPLACE" {
  value = local.REPLACE
}