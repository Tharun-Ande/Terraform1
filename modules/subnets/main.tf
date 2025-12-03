#create public subnet
resource "aws_subnet" "tharun_public" {
  vpc_id     = var.vpc_input
  cidr_block = var.subnet_cidr_block
  tags = {
    Name = var.subnet_tag
  }
}

#create private subnet
resource "aws_subnet" "tharun_private" {
  vpc_id     = var.vpc_input
  cidr_block = var.subnet_cidr_block_pvt
  tags = {
    Name = var.subnet_tag_pvt
  }
}