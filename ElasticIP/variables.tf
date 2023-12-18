variable "aws_eip_instance" {
  default = "i-08e2757a091b44f53"
  type    = string
}

variable "aws_eip_network_border_group" {
  default = "eu-west-2"
  type    = string
}

variable "aws_eip_network_interface" {
  default = "eni-0f4e897bfc0d09dc0"
  type    = string
}

variable "aws_eip_public_ipv4_pool" {
  default = "amazon"
  type    = string
}

variable "aws_eip_tags" {
  default {
    Name = "public-backup-bastion-ip"
  }

  type = map(string)
}

variable "aws_eip_vpc" {
  default = true
  type    = bool
}
