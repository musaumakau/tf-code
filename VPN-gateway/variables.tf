variable "aws_vpn_gateway_amazon_side_asn" {
  default = "64512"
  type    = string
}

variable "aws_vpn_gateway_tags" {
  default {
    Name = "Aujas-Qradar-VPG"
  }

  type = map(string)
}
