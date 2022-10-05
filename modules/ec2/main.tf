data "aws_ami" "lewis_ami" {
  most_recent = true

  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}



resource "aws_instance" "lewis-ec2" {
  ami               = data.aws_ami.lewis_ami.id
  availability_zone = var.az
  instance_type     = var.instance_template
  user_data         = file("install_wordpress.sh")
  provisioner "local-exec" {
    command = "echo ${self.public_ip} >>  ip_ec2.txt"
  }
  key_name = "lewis_keypair"
  tags = {
    Name = "lewis-instance"
  }
}

