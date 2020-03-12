data "aws_ami" "default" {
  owners                  = ["973714476881"]
  most_recent             = true
  filter {
    name                  = "name"
    values                = ["Centos-7-DevOps-Practice"]
  }
}