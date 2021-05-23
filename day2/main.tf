# terraform {
#   backend "s3" {
#     bucket = "mybucket"
#     key    = "path/to/my/key"
#     region = "us-east-1"
#   }
# }

provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "./module/vpc"
  region = var.region

}

data "aws_ssm_parameter" "cathay-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "web-server-exsample" {
  ami           = data.aws_ssm_parameter.cathay-ami.value
  instance_type = "t2.micro"
  subnet_id     = module.vpc.subnet_id
  # count = terraform.workspace == "default" ? 2:6
  count = 3
  tags = {
    Name = "${count.index}"
  }
}
