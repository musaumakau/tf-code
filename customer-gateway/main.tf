resource "aws_customer_gateway" "ac--cgw-01c0e2514605f7d46" {
  bgp_asn    = var.aws_customer_gateway_bgp_asn
  ip_address = var.aws_customer_gateway_ip_address
  tags       = var.aws_customer_gateway_tags
  type       = var.aws_customer_gateway_type
}

resource "aws_customer_gateway" "ac--cgw-021eca08e2ee393fe" {
  bgp_asn    = var.aws_customer_gateway_bgp_asn
  ip_address = var.aws_customer_gateway_ip_address
  tags       = var.aws_customer_gateway_tags
  type       = var.aws_customer_gateway_type
}
