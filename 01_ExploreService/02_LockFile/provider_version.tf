terraform {
  required_providers {
    aws = {
      source="hashicorp/aws"
      version = "~>5.0"
    }
  }
}


provider "aws"{
  region = "us-east-1"
  access_key = "AKIATQWYEZX273GTSFGH"
  secret_key = "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"
}

resource "aws_iam_user" "demouser" {
  name="abhishek-demo-user"
}