output "output_ec2_id" {
  value = aws_instance.lewis-ec2.id
}


output "output_ec2_network_id" {
  value = aws_instance.lewis-ec2.primary_network_interface_id
  }
