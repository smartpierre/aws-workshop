terraform {
  backend "s3" {
    bucket  = "figures-sandbox-euc1"
    key     = "aws-workshop/changeme/terraform.tfstate"
    region  = "eu-central-1"
    profile = "figures-production"
  }
}
