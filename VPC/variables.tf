variable "aws_vpc_assign_generated_ipv6_cidr_block" {
  default = false
  type    = bool
}

variable "aws_vpc_cidr_block" {
  default = "10.40.0.0/16"
  type    = string
}

variable "aws_vpc_enable_dns_hostnames" {
  default = true
  type    = bool
}

variable "aws_vpc_enable_dns_support" {
  default = true
  type    = bool
}

variable "aws_vpc_enable_network_address_usage_metrics" {
  default = false
  type    = bool
}

variable "aws_vpc_endpoint_policy" {
  default = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}],\"Version\":\"2008-10-17\"}"
  type    = string
}

variable "aws_vpc_endpoint_private_dns_enabled" {
  default = false
  type    = bool
}

variable "aws_vpc_endpoint_route_table_ids" {
  default = ["rtb-01416f1f7a9caceb5", "rtb-01910b765f126a1ff", "rtb-0448668edd3b158c3", "rtb-09eef75731b2c2e73", "rtb-0cc0cdb846e0dcc47"]
  type    = set(string)
}

variable "aws_vpc_endpoint_service_name" {
  default = "com.amazonaws.eu-west-2.s3"
  type    = string
}

variable "aws_vpc_endpoint_tags" {
  default {
    Name = "main-vpce-s3"
  }

  type = map(string)
}

variable "aws_vpc_endpoint_vpc_endpoint_type" {
  default = "Gateway"
  type    = string
}

variable "aws_vpc_instance_tenancy" {
  default = "default"
  type    = string
}

variable "aws_vpc_ipv6_netmask_length" {
  default = 0
  type    = number
}

variable "aws_vpc_peering_connection_peer_owner_id" {
  default = "766176144542"
  type    = string
}

variable "aws_vpc_peering_connection_peer_region" {
  default = "eu-west-2"
  type    = string
}

variable "aws_vpc_peering_connection_tags" {
  default {
    Name = "aujus-main-vpc-peering"
  }

  type = map(string)
}

variable "aws_vpc_tags" {
  default {
    Name = "main-vpc"
  }

  type = map(string)
}
