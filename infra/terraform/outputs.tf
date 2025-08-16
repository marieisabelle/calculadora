output "public_ip" {
  value = aws_instance.app_server.public_ip
  description = "IP público da instância EC2"
}
