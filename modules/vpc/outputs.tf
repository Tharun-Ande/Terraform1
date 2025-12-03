output "vpc_output" {
    description = "this is for VPC ID"
    value = aws_vpc.main.id
}