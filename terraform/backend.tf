terraform {
  backend "s3" {
    bucket = "calculadora-terraform-pracasecazaporizhzhya"
    key    = "terraform.tfstate"
    encrypt = true 
  }
}