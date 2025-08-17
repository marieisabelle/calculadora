terraform {
  backend "s3" {
    bucket = "calculadora-terraform-zaporizhzhyariodejaneiro"
    key    = "terraform.tfstate"
    encrypt = true 
  }
}