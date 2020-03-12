output "PUBLIN_URL" {
  value                   = "http://${aws_instance.web.public_ip}"
}