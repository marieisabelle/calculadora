terraform {
  backend "s3" {
    bucket = "calculadora-terraform-state"
    key    = "terraform.tfstate"
    encrypt = true
  }
}