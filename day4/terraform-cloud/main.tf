// This is an AWS provider block
provider "aws" {
  region = "us-east-1"
}


// This is an AWS resource block that creates an EC2 instance
resource "aws_instance" "new-server-example-1" {
  ami            = "ami-2757f631"
  instance_type  = "t2.micro"
  count = 5

  tags = {
    Name        = "new-server-example-1"
    Terraform   = "true"
    Environment = "dev"
  }
}

# provider "aws" {
#   region  = "us-east-1"
# }

# module "ec2_with_mandatory_tagging" {
#   source  = "github.com/cloudtp/hello-terraform-module"
#   Name = "cloud-terraform-Module2Labs-2"
#   EndDate = "next-week"
#   user_id = "cloudwen"
  
# }
