#create a public instance
resource "aws_instance" "tharun" {
  ami           = var.ami
  instance_type = var.i
  vpc_security_group_ids = var.sg1
  subnet_id = var.subnet_pub
  key_name = var.key_in
  associate_public_ip_address = var.x
  tags = {
    Name = var.n_pub_tag  }
}

#create a private instance
resource "aws_instance" "tharun_pvt" {
  ami           = var.ami_pvt
  instance_type = var.i
  vpc_security_group_ids = var.sg1
  subnet_id = var.subnet_pvt
  key_name = var.key_in
  associate_public_ip_address = var.y
  tags = {
    Name = var.n_pvt_tag 
  }
}