# Configure the AWS Provider

provider "aws" {

  version = "~> 2.0"

  region  = var.region

}

resource "aws_db_instance" "default" {
  identifier = var.dbid
  vpc_security_group_ids = [var.sgid]
  db_subnet_group_name = var.dbsng
  allocated_storage    = 20
  max_allocated_storage = 100
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.22"
  instance_class       = var.itype
  name                 = var.dbname
  username             = var.dbadmin
  password             = var.dbpw
  parameter_group_name = "default.mysql5.7"
  multi_az = true
  final_snapshot_identifier = "final"
}