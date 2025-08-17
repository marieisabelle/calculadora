terraform {
  backend "s3" {
    bucket = "terraform-calculadora-pracasecazaporizhzhyariodejaneirotroisrevieres"
    key    = "terraform.tfstate"
    encrypt = true
  }
}