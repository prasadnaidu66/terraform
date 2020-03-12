
locals {

  timestamp = "${timestamp()}"
}

output "TIMESTAMP" {
  value = local.timestamp
}