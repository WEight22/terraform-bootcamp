
provider "aws" {
  region  = "us-east-1"
}

module "ec2_with_mandatory_tagging" {
  source  = "github.com/cloudtp/hello-terraform-module"
  Name = "cloud-terraform-Module2Labs"
  EndDate = "next-week"
  user_id = "cloud"
  

  // Lab Task: Read the module code at https://github.com/cloudtp/hello-terraform-module
  // to set the required input parameter
  // INSERT_ARGUMENT
}
