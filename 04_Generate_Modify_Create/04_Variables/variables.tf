variable "access_key" {
  default ="AKIATQWYEZX273GTSFGH"
}

variable "secret_key" {
  default = "bzkHN6jjVyTM+758qM0racThq5dnIO/V5K+lKk2s" 
}

variable "ami" {
  default = "ami-06b09bfacae1453cb"
  
}

variable "instance_type" {
  default = "t2.micro"
  
}

variable "types" {
  type = map
  default = {
    us-east-1 = "t2.micro"
    us-west-2 = "t2.nano"
    ap-south-1 = "t2.small"
  }
}
  
  variable "list" {
    type=list
    default = ["m5.large","m5.large","t2.medium"]
  }


