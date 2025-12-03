#Attach Elastic IP
resource "aws_eip" "tharun" {
  tags = {
    Name = var.eip_tag
  }
}
