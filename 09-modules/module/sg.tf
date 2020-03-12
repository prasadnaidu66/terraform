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
