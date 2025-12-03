output "instance_pub_id" {
    description = "this is for pub instance ID"
    value = aws_instance.tharun.id
}

output "instance_pvt_id" {
    description = "this is for pvt instance ID"
    value = aws_instance.tharun_pvt.id
}
