variable "region" {
  description = "The name of the AWS region to set up a network within"
  default = "us-east-1"
}

variable "name" {
  default = "fiap-18CLD"
}

variable "base_cidr_block" {
   default = "10.0.0.0/12"
}

provider "aws" {
  region = "${var.region}"
}
