resource "aws_vpc" "main"{
  cidr_block = var.CIDR_BLOCK
  instance_tenacy = default 
  tags{
    Name = "Terraform Testing"
  }
}
