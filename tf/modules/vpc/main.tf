## VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  tags = {
    Name = "Python - Pipeline - VPC"
  }
}

## PUBLIC Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr

  tags = {
    Name = "Python PUB Sub"
  }
}

