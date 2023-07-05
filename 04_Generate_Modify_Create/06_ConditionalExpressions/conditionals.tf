provider "aws" {
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

locals {
  common_tags ={
    Owner="devops"
    service="backend"
  }
}

resource "aws_instance" "dev" {
  ami=var.ami
  instance_type="t2.micro"
  count = var.istest== true ?1:0
  
}

resource "aws_instance" "prod" {
  ami=var.ami
  instance_type="t2.large"
  count=var.istest==false?1:0
  tags=local.common_tags
}

