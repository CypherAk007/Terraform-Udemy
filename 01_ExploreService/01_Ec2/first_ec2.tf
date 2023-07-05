provider "aws"{
  region = "us-east-1"
  access_key = "AKIATQWYEZX273GTSFGH"
  secret_key = "bzkHN6jjVyTM+758qM0racThq5dnIO/V5K+lKk2s"
}

resource "aws_instance" "myec2"{
  ami="ami-06b09bfacae1453cb"
  instance_type = "t2.micro"

  tags = {
    Name="tf-example"
  }
}

