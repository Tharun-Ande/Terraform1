output "subnet_public_id" {
    description = "this is for subnet public ID"
    value = aws_subnet.tharun_public.id
}

output "subnet_pvt_id" {
    description = "this is for subnet pvt ID"
    value = aws_subnet.tharun_private.id
}
