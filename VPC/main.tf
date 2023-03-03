# Main VPC
resource "aws_vpc" "vikash" {
  cidr_block = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "vikash-VPC"
  }
}

# Creating Public Subnets in VPC
resource "aws_subnet" "vikash-public-1" {
  vpc_id                  = aws_vpc.vikash.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags = {
    Name = "vikash-public-1"
  }
}

resource "aws_subnet" "vikash-public-2" {
  vpc_id                  = aws_vpc.vikash.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags = {
    Name = "vikash-public-2"
  }
}