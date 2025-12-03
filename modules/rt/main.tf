#create public route table
 resource"aws_route_table" "tharun_public" {
  vpc_id = var.vpc_input
  route {
    cidr_block = var.pb_rt_cidr_blk
    gateway_id = var.igw_input
  }
  tags = {
    Name = var.pb_rt_tag
  }
} 

#create private route table
resource "aws_route_table" "tharun_private" {
  vpc_id = var.vpc_input
  route {
    cidr_block = var.pvt_rt_cidr_blk
    gateway_id = var.nat_input
  }
  tags = {
    Name = var.pvt_rt_tag
  }
}
 
 resource "aws_route_table_association" "public" {
  subnet_id      = var.subnet_pub
  route_table_id = aws_route_table.tharun_public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = var.subnet_pvt
  route_table_id = aws_route_table.tharun_private.id
}