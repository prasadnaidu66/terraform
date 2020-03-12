provider "aws" {
  region = "us-east-1"

}

data "aws_ami" "default" {
  owners = ["973714476881"]
  most_recent = true

  filter {
    name = "name"
    values = ["Centos7_ DEVOPS_SERVER"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.default.id
  instance_type = "t2.micro"
  key_name      = "TEST3"

  tags = {
    Name = "HelloWorld"
  }
}

output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
