variable "aws_customer_gateway_bgp_asn" {
  default = "65000"
  type    = string
}

variable "aws_customer_gateway_ip_address" {
  default = "196.43.248.253"
  type    = string
}

variable "aws_customer_gateway_tags" {
  default {
    Name = "scf-craftsilicon-gateway"
  }

  type = map(string)
}

variable "aws_customer_gateway_type" {
  default = "ipsec.1"
  type    = string
}
