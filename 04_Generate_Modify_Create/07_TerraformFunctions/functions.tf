provider "aws" {
  region = var.region
  access_key=var.access_key
  secret_key=var.secret_key

}

locals {
  time =formatdate("DD MMM YYYY hh:mm ZZZ",timestamp())
}

resource "aws_instance" "app-dev"{
  ami= lookup(var.ami,var.region)
  instance_type= "t2.micro"
  count=2

  tags={
    Name= element(var.tags,count.index)
  }
  
}