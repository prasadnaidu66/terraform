provider "aws" {
  region                  = "us-east-1"
}

module "SETUP_WEBSERVER" {
  source = "./module"
}

output "WEB-ADDRESS" {
  value = module.SETUP_WEBSERVER.PUBLIN_URL
}