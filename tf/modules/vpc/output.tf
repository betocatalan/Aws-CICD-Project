output "vpc_main_id" {
  value       = aws_vpc.main.id
  description = "Main VPC ID"
}

output "public_subnet" {
  value       = aws_subnet.public_subnet
  description = "List of PUBLIC subnet"
}