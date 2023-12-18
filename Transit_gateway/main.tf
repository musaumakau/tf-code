resource "aws_ec2_transit_gateway" "ac--tgw-07b3bfe1973f16f78" {
  amazon_side_asn                 = var.aws_ec2_transit_gateway_amazon_side_asn
  auto_accept_shared_attachments  = var.aws_ec2_transit_gateway_auto_accept_shared_attachments
  default_route_table_association = var.aws_ec2_transit_gateway_default_route_table_association
  default_route_table_propagation = var.aws_ec2_transit_gateway_default_route_table_propagation
  dns_support                     = var.aws_ec2_transit_gateway_dns_support
  multicast_support               = var.aws_ec2_transit_gateway_multicast_support
  vpn_ecmp_support                = var.aws_ec2_transit_gateway_vpn_ecmp_support
}

resource "aws_ec2_transit_gateway" "ac--tgw-0ce0961c06185b312" {
  amazon_side_asn                 = var.aws_ec2_transit_gateway_amazon_side_asn
  auto_accept_shared_attachments  = var.aws_ec2_transit_gateway_auto_accept_shared_attachments
  default_route_table_association = var.aws_ec2_transit_gateway_default_route_table_association
  default_route_table_propagation = var.aws_ec2_transit_gateway_default_route_table_propagation
  description                     = var.aws_ec2_transit_gateway_description
  dns_support                     = var.aws_ec2_transit_gateway_dns_support
  multicast_support               = var.aws_ec2_transit_gateway_multicast_support
  vpn_ecmp_support                = var.aws_ec2_transit_gateway_vpn_ecmp_support
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ac--tgw-attach-042f1363f096fd428" {
  appliance_mode_support                          = var.aws_ec2_transit_gateway_vpc_attachment_appliance_mode_support
  dns_support                                     = var.aws_ec2_transit_gateway_vpc_attachment_dns_support
  ipv6_support                                    = var.aws_ec2_transit_gateway_vpc_attachment_ipv6_support
  subnet_ids                                      = var.aws_ec2_transit_gateway_vpc_attachment_subnet_ids
  tags                                            = var.aws_ec2_transit_gateway_vpc_attachment_tags
  transit_gateway_default_route_table_association = var.aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_propagation
  transit_gateway_id                              = aws_ec2_transit_gateway.ac--tgw-07b3bfe1973f16f78.id
  vpc_id                                          = var.aws_ec2_transit_gateway_vpc_attachment_vpc_id
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ac--tgw-attach-08697ea35792e3e3b" {
  appliance_mode_support                          = var.aws_ec2_transit_gateway_vpc_attachment_appliance_mode_support
  dns_support                                     = var.aws_ec2_transit_gateway_vpc_attachment_dns_support
  ipv6_support                                    = var.aws_ec2_transit_gateway_vpc_attachment_ipv6_support
  subnet_ids                                      = var.aws_ec2_transit_gateway_vpc_attachment_subnet_ids
  tags                                            = var.aws_ec2_transit_gateway_vpc_attachment_tags
  transit_gateway_default_route_table_association = var.aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_association
  transit_gateway_default_route_table_propagation = var.aws_ec2_transit_gateway_vpc_attachment_transit_gateway_default_route_table_propagation
  transit_gateway_id                              = aws_ec2_transit_gateway.ac--tgw-07b3bfe1973f16f78.id
  vpc_id                                          = var.aws_ec2_transit_gateway_vpc_attachment_vpc_id
}
