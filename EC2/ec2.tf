# Configure the AWS Provider

provider "aws" {

  version = "~> 2.0"

  region  = var.region

}



data "aws_ami" "ubuntu" {
  most_recent = true
  owners           = ["099720109477"]



  filter {

    name   = "name"

    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]

  }



  filter {

    name   = "root-device-type"

    values = ["ebs"]

  }


  filter {

    name   = "virtualization-type"

    values = ["hvm"]

  }

}

resource "aws_instance" "ubuntu_server" {
  ami  = "${data.aws_ami.ubuntu.id}"
  instance_type = var.itype
  key_name = var.keypair
  subnet_id = var.snid
  security_groups = [var.sgid]
  tags = {
  Name = var.nametag
  }

}
