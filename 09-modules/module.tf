provider "aws" {
  region                  = "us-east-1"
}

module "SETUP_WEBSERVER" {
  source = "./module"
}