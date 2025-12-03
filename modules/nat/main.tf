#create NAT gateway
resource "aws_nat_gateway" "tharun" {
  allocation_id = var.eip_in
  subnet_id     = var.pub_subnet_in
  tags = {
    Name = var.n_gw
  }
}
