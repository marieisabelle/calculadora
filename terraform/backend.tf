terraform {
  backend "s3" {
    bucket = "seu-bucket-para-estado"
    key    = "terraform.tfstate"
  }
}