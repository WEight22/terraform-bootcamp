// This is an AWS provider block
provider "aws" {
    region = "us-east-1"
}

data "aws_ssm_parameter" "cathay-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

// This is an AWS resource block that creates an EC2 instance
// Notice that this creates multiple instances, but does not show multiple servers in the graph
resource "aws_instance" "server1" {
  ami           = data.aws_ssm_paramete.cathay-ami.value
  instance_type = "t2.micro"
  ab
  count         = 2
  tags = {
    index = "${count.index}"
  }
}

output "instance_ip_addr" {
  value = aws_instance.server1[*].private_ip
}
