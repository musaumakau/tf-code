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

  subnet_ids = ["subnet-05a7709f7ea1ab238", "subnet-078af4ec8efe88431", "subnet-087e5c32cbaca1cd8", "subnet-0a7061207da3fd3a1"]
  vpc_id     = "vpc-0fedac722f1953c41"
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

  subnet_ids = ["subnet-002ad57466d0cfd46", "subnet-0124b4e97562ebbd7", "subnet-036ada20d56a38f43", "subnet-0428e0711a4ca2507", "subnet-09aa7e3eabd5bae59", "subnet-0d715c5c159eae0fb", "subnet-0f597fdaea877e775", "subnet-0fc2fa7eea70faa76"]
  vpc_id     = "vpc-0a776fe934cdc9011"
}
