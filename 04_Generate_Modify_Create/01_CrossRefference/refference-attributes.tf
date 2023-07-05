provider "aws"{
  region = "us-east-1"
  secret_key = "bzkHN6jjVyTM+758qM0racThq5dnIO/V5K+lKk2s"
  access_key = "AKIATQWYEZX273GTSFGH"
}

# create eip
resource "aws_eip" "lb" {
  domain="vpc"
  
}

# create sg
resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
    
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}