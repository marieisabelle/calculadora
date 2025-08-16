provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "app_server" {
  ami           = "ami-0c02fb55956c7d316" # Amazon Linux 2 (verifique a região)
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "${var.project_name}-ec2"
  }
}
