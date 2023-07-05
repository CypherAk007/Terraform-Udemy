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

variable "ec2_count" {
  type=number
  default = 1
}