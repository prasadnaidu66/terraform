provider "aws" {
  region         = "us-east-1"
}

terraform {
  backend "s3" {
    bucket       = "d45-terraform-states-1"
    key          = "10-remote-states/terraform.tfstate"
    region       = "us-east-1"
    lock_table   = "samplelockterra"
  }
}

resource "null_resource " "just_sleep" {
  provisioner    = "local-exec" {
 command         = "sleep 120"
}
}