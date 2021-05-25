provider "aws" {
  region = "us-east-1"
}

module "ha-servers" {
  source = "../two-servers/two-servers"
}
