variable "TIMMINGS"{
  default = {
    "MORNG" = "8:30AM"
    "EVNG"  = "6:30PM"

  }
}

output "MRNG_TIMMINGS" {
  value = var.TIMMINGS["MORNG"]
}

output "EVN TIMMINGS" {
  value = var.TIMMINGS["EVNG"]
}