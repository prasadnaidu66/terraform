provider "aws" {
  region                  = "us-east-1"
}

data "aws_ami" "default" {
  owners                  = ["973714476881"]
  most_recent             = true
  filter {
    name                  = "name"
    values                = ["Centos-7-DevOps-Practice"]
  }
}

resource "aws_security_group" "allow_web_and_ssh" {
  name                    = "allow_web_and_ssh"
  description             = "allow_web_and_ssh"

  ingress {
    from_port             = 22
    to_port               = 22
    protocol              = "tcp"
    cidr_blocks           = ["0.0.0.0/0"]
  }

  ingress {
    from_port             = 80
    to_port               = 80
    protocol              = "tcp"
    cidr_blocks           = ["0.0.0.0/0"]
  }

  egress {
    from_port             = 0
    to_port               = 0
    protocol              = "-1"
    cidr_blocks           = ["0.0.0.0/0"]
  }

  tags                    = {
    Name                  = "allow_web_and_ssh"
  }
}

resource "aws_instance" "web" {
  ami                     = data.aws_ami.default.id
  instance_type           = "t2.micro"
  key_name                = "TEST3"
  vpc_security_group_ids  = [aws_security_group.allow_web_and_ssh.id]

  tags                    = {
    Name                  = "web-server"
  }

  provisioner "remote-exec" {
    connection {
      host = self.public_ip
      user = "root"
      password = "DevOps321"
    }
    inline = [
      "yum install nginx -y",
      "systemctl start nginx"
    ]
  }


}

output "PUBLIN_URL" {
  value                   = "http://${aws_instance.web.public_ip}"
}
