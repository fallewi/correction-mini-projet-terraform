terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region     = var.region
  access_key = "AKIA5HPA5JMVZWFUF4LB"
  secret_key = "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"
}

module "sg" {
  source = "../modules/sg"
}


module "ebs" {
  source    = "../modules/ebs"
  disk_size = 2
}

module "eip" {
  source = "../modules/eip"
}

module "ec2" {
  source = "../modules/ec2"
}


resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = module.sg.output_sg_id
  network_interface_id = module.ec2.output_ec2_network_id
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = module.ec2.output_ec2_id
  allocation_id = module.eip.output_eip_id
}


