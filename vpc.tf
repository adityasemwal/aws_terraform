resource "aws_vpc" "main"{
  cidr_block = var.CIDR_BLOCK
  instance_tenacy = default 
  tags{
    Name = "Terraform Testing"
  }
}

resource "aws_subnet" "test-public-1"{
  vpc_id = aws_vpc.main.id
  cidr_block = var.SUB_1_CIDR
  map_public_ip_on_launch = "true"
  availability_zone = "us-west-1a"
  tags{
    Name = "Test Public 1"
  }
}
# Internet Gateway
resource "aws_internet_gateway" "main-gw"{
  vpc_id = aws_vpc.main.id
  tags {
    Name = "test_gateway"
  }
}

# Route Table
resource "aws_route_table" "main-public"{
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main-gw.id
  }
}
