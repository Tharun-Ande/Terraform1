output "rt_pub_id" {
    description = "this is for pub rt ID"
    value = aws_route_table.tharun_public.id
}

output "rt_pvt_id" {
    description = "this is for pvt rt ID"
    value = aws_route_table.tharun_private.id
}