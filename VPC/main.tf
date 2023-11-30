resource "aws_vpc" "ac--vpc-0a776fe934cdc9011" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.40.0.0/16"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = 0

  tags = {
    Name = "main-vpc"
  }
}

resource "aws_vpc" "ac--vpc-0fedac722f1953c41" {
  assign_generated_ipv6_cidr_block     = false
  cidr_block                           = "10.50.0.0/24"
  enable_dns_hostnames                 = true
  enable_dns_support                   = true
  enable_network_address_usage_metrics = false
  instance_tenancy                     = "default"
  ipv6_netmask_length                  = 0

  tags = {
    Name = "aujus-vpc"
  }
}

resource "aws_vpc_endpoint" "ac--vpce-0c51af51bcfd2f194" {
  policy              = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}],\"Version\":\"2008-10-17\"}"
  private_dns_enabled = false
  route_table_ids     = ["rtb-01416f1f7a9caceb5", "rtb-01910b765f126a1ff", "rtb-0448668edd3b158c3", "rtb-09eef75731b2c2e73", "rtb-0cc0cdb846e0dcc47"]
  service_name        = "com.amazonaws.eu-west-2.s3"

  tags = {
    Name = "main-vpce-s3"
  }

  vpc_endpoint_type = "Gateway"
  vpc_id            = aws_vpc.ac--vpc-0a776fe934cdc9011.id
}

resource "aws_vpc_endpoint" "ac--vpce-0c78d40f9607aa75e" {
  policy              = "{\"Statement\":[{\"Action\":\"*\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"*\"}],\"Version\":\"2008-10-17\"}"
  private_dns_enabled = false
  route_table_ids     = ["rtb-042e21eddd434b20b", "rtb-0ca065df4d0821bd6"]
  service_name        = "com.amazonaws.eu-west-2.s3"

  tags = {
    Name = "aujus-vpce-s3"
  }

  vpc_endpoint_type = "Gateway"
  vpc_id            = aws_vpc.ac--vpc-0fedac722f1953c41.id
}

resource "aws_vpc_peering_connection" "ac--pcx-0417dc5b278b94d11" {
  accepter {
    allow_remote_vpc_dns_resolution = false
  }

  peer_owner_id = "766176144542"
  peer_region   = "eu-west-2"
  peer_vpc_id   = aws_vpc.ac--vpc-0fedac722f1953c41.id

  requester {
    allow_remote_vpc_dns_resolution = false
  }

  tags = {
    Name = "aujus-main-vpc-peering"
  }

  vpc_id = aws_vpc.ac--vpc-0a776fe934cdc9011.id
}

resource "aws_vpn_gateway" "ac--vgw-027a98b9c7af0df2a" {
  amazon_side_asn = "64512"

  tags = {
    Name = "Aujas-Qradar-VPG"
  }
}
