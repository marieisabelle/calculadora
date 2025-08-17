terraform {
  backend "s3" {
    bucket = "calculadora-terraform-state-isabellemariebarinov"
    key    = "terraform.tfstate"
    encrypt = true
  }
}