#create a Key pair
resource "aws_key_pair" "t_key" {
  key_name   = var.key
  public_key = var.p_key
}
