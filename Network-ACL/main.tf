resource "aws_network_acl" "ac--acl-00e80543776de8b96" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "-1"
    rule_no    = 100
    to_port    = 0
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "-1"
    rule_no    = 100
    to_port    = 0
  }

  subnet_ids = var.aws_network_acl_subnet_ids
  vpc_id     = var.aws_network_acl_vpc_id
}

resource "aws_network_acl" "ac--acl-025f2c9fb1f6e34f2" {
  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "-1"
    rule_no    = 100
    to_port    = 0
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "-1"
    rule_no    = 108
    to_port    = 0
  }

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 22
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 107
    to_port    = 22
  }

  ingress {
    action     = "allow"
    cidr_block = "10.40.0.0/16"
    from_port  = 22
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 103
    to_port    = 22
  }

  ingress {
    action     = "allow"
    cidr_block = "10.40.0.0/16"
    from_port  = 22
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 106
    to_port    = 22
  }

  ingress {
    action     = "allow"
    cidr_block = "10.40.0.0/16"
    from_port  = 3389
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 101
    to_port    = 3389
  }

  ingress {
    action     = "allow"
    cidr_block = "192.168.32.0/24"
    from_port  = 22
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 104
    to_port    = 22
  }

  ingress {
    action     = "allow"
    cidr_block = "192.168.32.0/24"
    from_port  = 3389
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 102
    to_port    = 3389
  }

  ingress {
    action     = "deny"
    cidr_block = "0.0.0.0/0"
    from_port  = 3389
    icmp_code  = 0
    icmp_type  = 0
    protocol   = "6"
    rule_no    = 105
    to_port    = 3389
  }

  subnet_ids = var.aws_network_acl_subnet_ids
  vpc_id     = var.aws_network_acl_vpc_id
}
