variable "region" {
  default = "us-east-1"
  type    = "string"
}

variable "itype" {
  default = "t2.micro"
  type    = "string"
}

variable "keypair" {
  default = "MyKeyPair"
  type    = "string"
}

variable "snid" {
  default = "subnet-12345"
  type    = "string"
}

variable "sgid" {
  default = "sg-12345"
  type    = "string"
}

variable "nametag" {
  default = "myEC2"
  type    = "string"
}