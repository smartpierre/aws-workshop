module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "vpc-sandbox-changeme-euw3"
  cidr = "10.100.0.0/16"

  azs             = ["eu-west-3a", "eu-west-3b", "eu-west-3c"]
  private_subnets = ["10.100.1.0/24", "10.100.2.0/24", "10.100.3.0/24"]
  public_subnets  = ["10.100.101.0/24", "10.100.102.0/24", "10.100.103.0/24"]

  enable_nat_gateway    = true
  single_nat_gateway    = true

  tags = {
    Environment = "sandbox"
  }
}