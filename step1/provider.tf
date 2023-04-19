provider "aws" {
  region  = "eu-central-1"
  alias   = "eu-central-1"
  profile = "figures-production"
}

provider "aws" {
  region  = "eu-west-3"
  profile = "figures-production"
}
