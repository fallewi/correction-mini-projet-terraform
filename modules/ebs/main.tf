resource "aws_ebs_volume" "monebs" {
  availability_zone = var.az
  size              = var.disk_size
  tags = {
    Name = "${var.maintainer}"
  }
}
