variable "AWS_REGION"{
  default = "us-west-1"
}

variable "AWS_ACCESS_KEY"{}

variable "AWS_SECRET_KEY"{}

variable "AMIS" {
  default = {
    us-west-1 = "us-west-1 ami"
    eu-west-1 = "eu-west-1 ami"
    ap-south-1 = "ami-ap south instance"
  }
}

variable "AWS_INSTANCE"{}
