variable "aws_region" {
  description = "Região AWS para criar os recursos"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Prefixo para nomear recursos"
  type        = string
  default     = "devops-calculadora"
}

