resource "aws_eip" "moneip" {
  #instance = aws_instance.lewis-ec2.id
  vpc = true
}

