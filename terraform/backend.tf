terraform {
  backend "s3" {
    bucket = "calculadora-terraform-state-isabellemarie"
    key    = "terraform.tfstate"
    encrypt = true
  }
}