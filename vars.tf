variable "AWS_REGION"{
  default = "us-west-1"
}

variable "AWS_ACCESS_KEY"{}

variable "AWS_SECRET_KEY"{}

variable "AMIS" {
  default = {
    us-west-1 = "ami-03caa3f860895f82e"
    eu-west-1 = "eu-west-1 ami"
    ap-south-1 = "ami-ap south instance"
  }
}

variable "AWS_INSTANCE"{}

variable "PATH_TO_PUBLIC_KEY" {
  default = "keys/adikey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "adikey"
}

variable "CIDR_BLOCK"{
  default = "10.0.0.0/16"
}

variable "SUB_1_CIDR"{
  default = "10.0.1.0/24"
}

variable "ports"{
  type = map(list(string))
  default = {
    "22" = ["0.0.0.0/0"]
    "8080" = ["0.0.0.0/0"]
  }
}
