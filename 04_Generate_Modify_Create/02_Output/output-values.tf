provider "aws" {
  region = "us-east-1"
  access_key = "AKIATQWYEZX273GTSFGH"
  secret_key = "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"
}

resource "aws_eip" "lb" {
  domain="vpc"
  
}

output "public-ip"{
  value= aws_eip.lb.public_ip
}