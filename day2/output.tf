output "Private_IP" {
  description = "ec2 private ip"
  value       = aws_instance.web-server-exsample[*].private_ip
}