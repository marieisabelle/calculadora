terraform {
  backend "s3" {
    bucket = "calculadora-terraform-pracasecazaporizhzhya19981989"
    key    = "terraform.tfstate"
    encrypt = true 
  }
}