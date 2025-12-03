#create internet gateway
resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_input
  tags = {
    Name = var.igw_tag
  }
}