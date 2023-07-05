variable "ami" {
  type=map
  default={
    "us-east-1"="ami-06b09bfacae1453cb"
    "us-west-2"="ami-0d6621c01e8c2de2c"
    "ap-south-1"="ami-0470e33cd681b2476"
  }
}

variable "tags" {
  type=list
  default=["instance_1","instance_2"]
  
}

variable "region" {
  default = "us-east-1"
}

variable "access_key" {
  default ="AKIATQWYEZX273GTSFGH"
}

variable "secret_key" {
  default = "bzkHN6jjVyTM+758qM0racThq5dnIO/V5K+lKk2s" 
}
