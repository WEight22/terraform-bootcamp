// This is an AWS provider block
provider "aws" {
    region = "us-east-1"
}

// This is an AWS resource block that creates an EC2 instance
resource "aws_instance" "server1" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}

resource "aws_instance" "server2" {
  ami           = "ami-2757f631"
  instance_type = "t2.micro"
}
