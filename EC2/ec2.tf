# Configure the AWS Provider

provider "aws" {

  version = "~> 2.0"

  region  = "us-east-1"

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
  instance_type = "t2.micro"
  key_name = "MyKeyPair"
  subnet_id = "subnet-12345"
  security_groups = ["sg-12345"]
  tags = {
  Name = "tf-ubuntu"
  }

}
