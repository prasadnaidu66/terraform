variable "CLASS_TIMMINGS"{
  default = {
    "MORNG" = "8:30AM"
    "EVNG"  = "6:30PM"

  }
}

output "MRNG_TIMMINGS" {
  value = var.CLASS_TIMMINGS["MORNG"]
}

output "EVNG_TIMMINGS" {
  value = var.CLASS_TIMMINGS["EVNG"]
}