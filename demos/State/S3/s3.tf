resource "aws_s3_bucket" "b" {
  bucket = "18cld-teste-prod"
  acl    = "private"

  tags = {
    Name        = "18cld-teste-prod"
    Environment = "admin"
  }
}