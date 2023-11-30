resource "aws_ec2_transit_gateway" "ac--tgw-07b3bfe1973f16f78" {
  amazon_side_asn                 = 64512
  auto_accept_shared_attachments  = "disable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  dns_support                     = "enable"
  multicast_support               = "disable"
  vpn_ecmp_support                = "enable"
}

resource "aws_ec2_transit_gateway" "ac--tgw-0ce0961c06185b312" {
  amazon_side_asn                 = 64512
  auto_accept_shared_attachments  = "enable"
  default_route_table_association = "enable"
  default_route_table_propagation = "enable"
  description                     = "a hub for  craftsilicon"
  dns_support                     = "enable"
  multicast_support               = "disable"
  vpn_ecmp_support                = "enable"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ac--tgw-attach-042f1363f096fd428" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]

  tags = {
    Name = "network-account-shared-tg-attachment"
  }

  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true
  transit_gateway_id                              = aws_ec2_transit_gateway.ac--tgw-07b3bfe1973f16f78.id
  vpc_id                                          = "vpc-0a776fe934cdc9011"
}

resource "aws_ec2_transit_gateway_vpc_attachment" "ac--tgw-attach-08697ea35792e3e3b" {
  appliance_mode_support = "disable"
  dns_support            = "enable"
  ipv6_support           = "disable"
  subnet_ids             = ["subnet-05a7709f7ea1ab238", "subnet-0a7061207da3fd3a1"]

  tags = {
    Name = "aujas-vpn-tg-attachment"
  }

  transit_gateway_default_route_table_association = true
  transit_gateway_default_route_table_propagation = true
  transit_gateway_id                              = aws_ec2_transit_gateway.ac--tgw-07b3bfe1973f16f78.id
  vpc_id                                          = "vpc-0fedac722f1953c41"
}
