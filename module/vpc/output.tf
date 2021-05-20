output "vpc_id" {
    value = aws_vpc.tf_vpc.id
}

output "subnet_id" {
    value = aws_subnetc.tf_vpc_subnet1.id
}