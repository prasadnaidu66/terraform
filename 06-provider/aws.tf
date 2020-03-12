provider "aws" {
  region = "us-east-1"

}

resource "aws_instance" "web" {
  ami           = "ami-01b8d3897dce95258"
  instance_type = "t2.micro"
  key_name      = "TEST3"

  tags = {
    Name = "HelloWorld"
  }
}

output "PUBLIC_IP_OF_INSTANCE" {
  value = aws_instance.web.public_ip
}
