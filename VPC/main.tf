resource "aws_vpc" "ac--vpc-0a776fe934cdc9011" {
  assign_generated_ipv6_cidr_block     = var.aws_vpc_assign_generated_ipv6_cidr_block
  cidr_block                           = var.aws_vpc_cidr_block
  enable_dns_hostnames                 = var.aws_vpc_enable_dns_hostnames
  enable_dns_support                   = var.aws_vpc_enable_dns_support
  enable_network_address_usage_metrics = var.aws_vpc_enable_network_address_usage_metrics
  instance_tenancy                     = var.aws_vpc_instance_tenancy
  ipv6_netmask_length                  = var.aws_vpc_ipv6_netmask_length
  tags                                 = var.aws_vpc_tags
}

resource "aws_vpc" "ac--vpc-0fedac722f1953c41" {
  assign_generated_ipv6_cidr_block     = var.aws_vpc_assign_generated_ipv6_cidr_block
  cidr_block                           = var.aws_vpc_cidr_block
  enable_dns_hostnames                 = var.aws_vpc_enable_dns_hostnames
  enable_dns_support                   = var.aws_vpc_enable_dns_support
  enable_network_address_usage_metrics = var.aws_vpc_enable_network_address_usage_metrics
  instance_tenancy                     = var.aws_vpc_instance_tenancy
  ipv6_netmask_length                  = var.aws_vpc_ipv6_netmask_length
  tags                                 = var.aws_vpc_tags
}

resource "aws_vpc_endpoint" "ac--vpce-0c51af51bcfd2f194" {
  policy              = var.aws_vpc_endpoint_policy
  private_dns_enabled = var.aws_vpc_endpoint_private_dns_enabled
  route_table_ids     = var.aws_vpc_endpoint_route_table_ids
  service_name        = var.aws_vpc_endpoint_service_name
  tags                = var.aws_vpc_endpoint_tags
  vpc_endpoint_type   = var.aws_vpc_endpoint_vpc_endpoint_type
  vpc_id              = aws_vpc.ac--vpc-0a776fe934cdc9011.id
}

resource "aws_vpc_endpoint" "ac--vpce-0c78d40f9607aa75e" {
  policy              = var.aws_vpc_endpoint_policy
  private_dns_enabled = var.aws_vpc_endpoint_private_dns_enabled
  route_table_ids     = var.aws_vpc_endpoint_route_table_ids
  service_name        = var.aws_vpc_endpoint_service_name
  tags                = var.aws_vpc_endpoint_tags
  vpc_endpoint_type   = var.aws_vpc_endpoint_vpc_endpoint_type
  vpc_id              = aws_vpc.ac--vpc-0fedac722f1953c41.id
}

resource "aws_vpc_peering_connection" "ac--pcx-0417dc5b278b94d11" {
  accepter {
    allow_remote_vpc_dns_resolution = false
  }

  peer_owner_id = var.aws_vpc_peering_connection_peer_owner_id
  peer_region   = var.aws_vpc_peering_connection_peer_region
  peer_vpc_id   = aws_vpc.ac--vpc-0fedac722f1953c41.id

  requester {
    allow_remote_vpc_dns_resolution = false
  }

  tags   = var.aws_vpc_peering_connection_tags
  vpc_id = aws_vpc.ac--vpc-0a776fe934cdc9011.id
}
