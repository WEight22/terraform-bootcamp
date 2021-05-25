provider "aws" {
  region  = "us-east-1"
}

module "ec2_with_mandatory_tagging" {
  source  = "github.com/cloudtp/hello-terraform-module"
  Name = "cloud-terraform-Module2Labs-2"
  EndDate = "next-week"
  user_id = "cloudwen"
  
}
