variable "aws_ec2_transit_gateway_amazon_side_asn" {
  default = 64512
  type    = number
}

variable "aws_ec2_transit_gateway_auto_accept_shared_attachments" {
  default = "disable"
  type    = string
}

variable "aws_ec2_transit_gateway_default_route_table_association" {
  default = "enable"
  type    = string
}

variable "aws_ec2_transit_gateway_default_route_table_propagation" {
  default = "enable"
  type    = string
}

variable "aws_ec2_transit_gateway_description" {
  default = "a hub for  craftsilicon"
  type    = string
}

variable "aws_ec2_transit_gateway_dns_support" {
  default = "enable"
  type    = string
}

variable "aws_ec2_transit_gateway_multicast_support" {
  default = "disable"
  type    = string
}

variable "aws_ec2_transit_gateway_vpc_attachment_appliance_mode_support" {
  default = "disable"
  type    = string
}

variable "aws_ec2_transit_gateway_vpc_attachment_dns_support" {
  default = "enable"
  type    = string
}

variable "aws_ec2_transit_gateway_vpc_attachment_ipv6_support" {
  default = "disable"
  type    = string
}

variable "aws_ec2_transit_gateway_vpc_attachment_subnet_ids" {
  default = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  type    = set(string)
}

variable "aws_ec2_transit_gateway_vpc_attachment_tags" {
  default {
    Name = "network-account-shared-tg-attachment"
  }

  type = map(string)
}

variable "aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_association" {
  default = true
  type    = bool
}

variable "aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_propagation" {
  default = true
  type    = bool
}

variable "aws_ec2_transit_gateway_vpc_attachment_vpc_id" {
  default = "vpc-0a776fe934cdc9011"
  type    = string
}

variable "aws_ec2_transit_gateway_vpn_ecmp_support" {
  default = "enable"
  type    = string
}
