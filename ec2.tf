resource "aws_instance" "terraform-ec2" {
  ami           = "ami-0d26eb3972b7f8c96"
  instance_type = var.ec2_type
  key_name = "terraform-key"
  security_groups = ["${aws_security_group.allow_rdp.name}"]
  
tags = {
    Name = "Terraform-instance"
  }
}
