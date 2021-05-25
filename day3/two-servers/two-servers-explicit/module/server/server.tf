provider "aws" {
    region = var.region
}

data "aws_ssm_parameter" "cathay-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

resource "aws_instance" "cloud-web-server-3" {
    ami = data.aws_ssm_parameter.cathay-ami.value
    instance_type = "t2.micro"
    
}