provider "aws" {
  region = "us-east-1"
  access_key = "AKIATQWYEZX273GTSFGH"
  secret_key = "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"
}

resource "aws_security_group" "var_demo" {
  name="abhishek-variables"

  ingress{
    from_port = 443
    to_port = 443
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
  ingress{
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
  ingress{
    from_port = 53
    to_port = 53
    protocol = "tcp"
    cidr_blocks = [var.vpn_ip]
  }
}