resource "aws_s3_bucket" "b" {
  bucket = "${var.project}-${var.nomeGrupo}-${var.env}"
  acl    = "private"

  tags = {
    Name        = "${var.project}-${var.nomeGrupo}-${var.env}"
    Environment = "${var.env}"
  }
}