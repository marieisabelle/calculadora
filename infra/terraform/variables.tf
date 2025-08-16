variable "aws_region" {
  default = "us-east-1"
}

variable "project_name" {
  default = "devops-calculadora"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Nome da chave SSH já criada na AWS"
  type        = string
}