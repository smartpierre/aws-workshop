## RESOURCE ##

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

resource "aws_vpc" "vpc-sandbox-changeme-euw3" {
  cidr_block = "10.100.0.0/16"
}

resource "aws_subnet" "vpc-sandbox-changeme-euw3-subnet-1" {
  vpc_id     = aws_vpc.vpc-sandbox-changeme-euw3.id
  cidr_block = "10.100.1.0/24"

  tags = {
    Name = "subnet-1"
    Vpc  = "vpc-sandbox-changeme-euw3"
  }
}


## DATA ##

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc

data "aws_vpc" "vpc-sandbox-euc1" {
  provider = aws.eu-central-1
  id = "vpc-019c186ca8a502fb8"
}

# resource "aws_subnet" "vpc-sandbox-euc1-subnet-changeme" {
#   provider = aws.eu-central-1
#   vpc_id     = data.aws_vpc.vpc-sandbox-euc1.id
#   # cidr_block = "10.80.144.0/20"
#   # cidr_block = "10.80.160.0/20"
#   # cidr_block = "10.80.176.0/20"
#   # cidr_block = "10.80.192.0/20"
  
#   tags = {
#     Name = "subnet-changeme"
#     Vpc  = "vpc-sandbox-euc1"
#   }
# }
