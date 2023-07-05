provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
  
}

resource "aws_instance" "name" {
  ami = var.ami
  instance_type = var.list[0]
}