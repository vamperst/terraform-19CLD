terraform {
  backend "s3" {
    bucket = "18cld-teste-prod"
    key    = "teste"
    region = "us-east-1"
  }
}