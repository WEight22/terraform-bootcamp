resource "aws_vpc" "tf_vpc" {
    cidr_block = "10.0.0.0/16"

    tags = {
      "Name" = "tf_vpc"
    }
  
}

resource "aws_subnet" "tf_vpc_subnet1" {
    vpc_id = aws_vpc.tf_vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true

    tags = {
      "Name" = "tf_vpc_subnet1"
    }

}