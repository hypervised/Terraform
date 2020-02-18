variable "region" {
  default = "us-east-1"
  type    = "string"
}

variable "itype" {
  default = "db.t2.medium"
  type    = "string"
}

variable "sgid" {
  default = "sg-12345"
  type    = "string"
}

variable "dbsng" {
  default = "mydbsngroup"
  type    = "string"
}

variable "dbid" {
  default = "mydb"
  type    = "string"
}

variable "dbadmin" {
  default = "admin"
  type    = "string"
}

variable "dbpw" {
  default = "password"
  type    = "string"
}

variable "dbname" {
  default = "mydb"
  type    = "string"
}