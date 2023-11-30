resource "aws_network_interface" "ac--eni-0027101acd69604b1" {
  description        = "Network Interface for Transit Gateway Attachment tgw-attach-08697ea35792e3e3b"
  interface_type     = "transit_gateway"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.50.0.132"
  private_ips        = ["10.50.0.132"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-0a7061207da3fd3a1"
}

resource "aws_network_interface" "ac--eni-00de71ea69892dfeb" {
  description        = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.177.134"
  private_ips        = ["10.40.177.134"]
  private_ips_count  = 0
  security_groups    = ["sg-0833d70477fbb7784"]
  source_dest_check  = true
  subnet_id          = "subnet-0f597fdaea877e775"
}

resource "aws_network_interface" "ac--eni-01682e59add626c0a" {
  attachment {
    device_index = 0
    instance     = "i-0c49d385e8131bdf3"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.130.84"
  private_ips        = ["10.40.130.84"]
  private_ips_count  = 0
  security_groups    = ["sg-01b1d43d825df35b2", "sg-0f018fbcd4e3fd7cd"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-01d2ca1eda2e22509" {
  attachment {
    device_index = 0
    instance     = "i-06ff6e10c20a9cca6"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.136.144"
  private_ips        = ["10.40.128.100", "10.40.128.165", "10.40.130.139", "10.40.132.172", "10.40.132.182", "10.40.134.125", "10.40.135.180", "10.40.135.201", "10.40.136.144", "10.40.136.166", "10.40.137.85", "10.40.140.177"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-06ff6e10c20a9cca6"
  }
}

resource "aws_network_interface" "ac--eni-01d8a33b348ff17b7" {
  attachment {
    device_index = 1
    instance     = "i-0e5f6eaf5507b2388"
  }

  description        = "aws-K8S-i-0e5f6eaf5507b2388"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.158.134"
  private_ips        = ["10.40.144.42", "10.40.145.169", "10.40.145.171", "10.40.149.169", "10.40.149.235", "10.40.149.56", "10.40.154.179", "10.40.154.197", "10.40.155.22", "10.40.156.239", "10.40.157.220", "10.40.158.134"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:28Z"
    "node.k8s.amazonaws.com/instance_id" = "i-0e5f6eaf5507b2388"
  }
}

resource "aws_network_interface" "ac--eni-020211a0f10c1769a" {
  attachment {
    device_index = 0
    instance     = "i-008d7e6614222b602"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.153.75"
  private_ips        = ["10.40.144.149", "10.40.144.221", "10.40.146.245", "10.40.147.19", "10.40.149.0", "10.40.150.18", "10.40.153.242", "10.40.153.75", "10.40.154.177", "10.40.156.249", "10.40.157.120", "10.40.159.23"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-008d7e6614222b602"
  }
}

resource "aws_network_interface" "ac--eni-027868e05aa934710" {
  description        = "Amazon EKS eks-cluster"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.137.111"
  private_ips        = ["10.40.137.111"]
  private_ips_count  = 0
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-02a9fbe17a5cc8436" {
  attachment {
    device_index = 0
    instance     = "i-01c7ef7ba646e6a54"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.155.14"
  private_ips        = ["10.40.155.14"]
  private_ips_count  = 0
  security_groups    = ["sg-01b1d43d825df35b2", "sg-0bcbcba14d5ab6bd5"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-02b694cbdbff83df1" {
  attachment {
    device_index = 0
    instance     = "i-00f2670c88b40328e"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.132.140"
  private_ips        = ["10.40.129.106", "10.40.132.140", "10.40.134.94", "10.40.136.135", "10.40.136.170", "10.40.136.180", "10.40.136.212", "10.40.136.25", "10.40.137.155", "10.40.142.189", "10.40.142.74", "10.40.143.117"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-00f2670c88b40328e"
  }
}

resource "aws_network_interface" "ac--eni-030cd191dfbaad8bf" {
  description        = "ElastiCache redis-001"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.175.7"
  private_ips        = ["10.40.175.7"]
  private_ips_count  = 0
  security_groups    = ["sg-0eb93ca9d68a52789"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-0372e8f4822818364" {
  description        = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.170.143"
  private_ips        = ["10.40.170.143"]
  private_ips_count  = 0
  security_groups    = ["sg-0833d70477fbb7784"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-0374c6773dbcd2dbc" {
  description        = "ELB net/a953ad6f802b345fe85f29d793a4e104/020ba1187374b56a"
  interface_type     = "network_load_balancer"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.148.87"
  private_ips        = ["10.40.148.87"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-03970ced4f6b9e1f7" {
  description        = "Network Interface for Transit Gateway Attachment tgw-attach-042f1363f096fd428"
  interface_type     = "transit_gateway"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.141.54"
  private_ips        = ["10.40.141.54"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-041353c746cc9dddf" {
  description        = "ELB app/main-internet-facing-lb/230b2a557ad6f675"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.9.195"
  private_ips        = ["10.40.9.195"]
  private_ips_count  = 0
  security_groups    = ["sg-09f2aa943abf46aa2"]
  source_dest_check  = true
  subnet_id          = "subnet-0d715c5c159eae0fb"
}

resource "aws_network_interface" "ac--eni-0415f4a60e5797788" {
  description        = "ELB app/ec2-internal/5db290448251c166"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.152.250"
  private_ips        = ["10.40.152.250"]
  private_ips_count  = 0
  security_groups    = ["sg-03790994b68291a2b"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-047d27e7ce637402c" {
  attachment {
    device_index = 0
    instance     = "i-0e5f6eaf5507b2388"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.159.213"
  private_ips        = ["10.40.145.194", "10.40.147.116", "10.40.149.60", "10.40.150.225", "10.40.153.107", "10.40.153.46", "10.40.155.128", "10.40.155.6", "10.40.156.140", "10.40.156.18", "10.40.157.41", "10.40.159.213"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0e5f6eaf5507b2388"
  }
}

resource "aws_network_interface" "ac--eni-04870c1a4764641c9" {
  attachment {
    device_index = 0
    instance     = "i-0130d3a39f9b2737d"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.141.170"
  private_ips        = ["10.40.128.254", "10.40.129.163", "10.40.132.168", "10.40.134.97", "10.40.136.139", "10.40.136.227", "10.40.137.113", "10.40.138.182", "10.40.139.45", "10.40.141.170", "10.40.142.28", "10.40.143.230"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0130d3a39f9b2737d"
  }
}

resource "aws_network_interface" "ac--eni-04c2a5e6a3baf7c5b" {
  description        = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.162.215"
  private_ips        = ["10.40.162.215"]
  private_ips_count  = 0
  security_groups    = ["sg-0833d70477fbb7784"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-04cb40e9c60506386" {
  attachment {
    device_index = 1
    instance     = "i-0faff146006ccaaaa"
  }

  description        = "aws-K8S-i-0faff146006ccaaaa"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.134.48"
  private_ips        = ["10.40.130.48", "10.40.131.39", "10.40.134.48", "10.40.135.138", "10.40.135.146", "10.40.136.49", "10.40.137.41", "10.40.138.4", "10.40.139.77", "10.40.140.111", "10.40.141.255", "10.40.142.216"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:30Z"
    "node.k8s.amazonaws.com/instance_id" = "i-0faff146006ccaaaa"
  }
}

resource "aws_network_interface" "ac--eni-0573d3b86efb8fa47" {
  attachment {
    device_index = 0
    instance     = "i-09b50ae9297aec290"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.149.97"
  private_ips        = ["10.40.144.192", "10.40.145.57", "10.40.146.194", "10.40.146.254", "10.40.147.39", "10.40.148.229", "10.40.148.3", "10.40.149.42", "10.40.149.97", "10.40.153.183", "10.40.157.10", "10.40.157.216"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-09b50ae9297aec290"
  }
}

resource "aws_network_interface" "ac--eni-057420db335a08796" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.165.27"
  private_ips        = ["10.40.165.27"]
  private_ips_count  = 0
  security_groups    = ["sg-0b894407029c80409"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-057f6c7baf42cfbce" {
  attachment {
    device_index = 0
    instance     = "i-07a923548d681a04f"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.147.225"
  private_ips        = ["10.40.147.225"]
  private_ips_count  = 0
  security_groups    = ["sg-01b1d43d825df35b2", "sg-02e85199df1ef741c"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-05b2e4f2a47aa1870" {
  description        = "ELB app/main-internet-facing-lb/230b2a557ad6f675"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.30.121"
  private_ips        = ["10.40.30.121"]
  private_ips_count  = 0
  security_groups    = ["sg-09f2aa943abf46aa2"]
  source_dest_check  = true
  subnet_id          = "subnet-0124b4e97562ebbd7"
}

resource "aws_network_interface" "ac--eni-064194896ba8759a8" {
  attachment {
    device_index = 1
    instance     = "i-0b7275149b005dfd2"
  }

  description        = "aws-K8S-i-0b7275149b005dfd2"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.156.202"
  private_ips        = ["10.40.145.16", "10.40.145.74", "10.40.149.140", "10.40.151.120", "10.40.155.18", "10.40.155.208", "10.40.156.176", "10.40.156.202", "10.40.157.57", "10.40.158.162", "10.40.159.252", "10.40.159.56"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:37Z"
    "node.k8s.amazonaws.com/instance_id" = "i-0b7275149b005dfd2"
  }
}

resource "aws_network_interface" "ac--eni-0670f63ab4364c34e" {
  attachment {
    device_index = 1
    instance     = "i-0fe0cfe073be148d3"
  }

  description        = "aws-K8S-i-0fe0cfe073be148d3"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.136.16"
  private_ips        = ["10.40.128.24", "10.40.129.213", "10.40.130.206", "10.40.130.93", "10.40.131.172", "10.40.133.81", "10.40.136.16", "10.40.137.145", "10.40.138.125", "10.40.140.225", "10.40.140.28", "10.40.142.194"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:37Z"
    "node.k8s.amazonaws.com/instance_id" = "i-0fe0cfe073be148d3"
  }
}

resource "aws_network_interface" "ac--eni-068f0160207b9a748" {
  description        = "ELB net/a953ad6f802b345fe85f29d793a4e104/020ba1187374b56a"
  interface_type     = "network_load_balancer"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.135.121"
  private_ips        = ["10.40.135.121"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-070f0397c0f08a404" {
  attachment {
    device_index = 1
    instance     = "i-008d7e6614222b602"
  }

  description        = "aws-K8S-i-008d7e6614222b602"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.152.114"
  private_ips        = ["10.40.144.74", "10.40.144.87", "10.40.145.58", "10.40.146.15", "10.40.149.66", "10.40.149.89", "10.40.150.232", "10.40.152.114", "10.40.152.237", "10.40.155.91", "10.40.156.217", "10.40.158.193"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:32Z"
    "node.k8s.amazonaws.com/instance_id" = "i-008d7e6614222b602"
  }
}

resource "aws_network_interface" "ac--eni-0812b6963d55dab60" {
  description        = "Network Interface for Transit Gateway Attachment tgw-attach-08697ea35792e3e3b"
  interface_type     = "transit_gateway"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.50.0.158"
  private_ips        = ["10.50.0.158"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-05a7709f7ea1ab238"
}

resource "aws_network_interface" "ac--eni-0865e902bd1a76e68" {
  description        = "ELB app/ec2-internal/5db290448251c166"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.130.157"
  private_ips        = ["10.40.130.157"]
  private_ips_count  = 0
  security_groups    = ["sg-03790994b68291a2b"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-08fc59e187a20d3c7" {
  attachment {
    device_index = 1
    instance     = "i-09b50ae9297aec290"
  }

  description        = "aws-K8S-i-09b50ae9297aec290"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.156.90"
  private_ips        = ["10.40.144.118", "10.40.146.189", "10.40.149.185", "10.40.152.221", "10.40.154.192", "10.40.155.222", "10.40.156.90", "10.40.157.53", "10.40.157.59", "10.40.158.65", "10.40.159.164", "10.40.159.181"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:30Z"
    "node.k8s.amazonaws.com/instance_id" = "i-09b50ae9297aec290"
  }
}

resource "aws_network_interface" "ac--eni-09179d75a8dd29edb" {
  description        = "Amazon EKS eks-cluster"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.152.211"
  private_ips        = ["10.40.152.211"]
  private_ips_count  = 0
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-092b2730dfc20b238" {
  attachment {
    device_index = 0
    instance     = "i-0b7275149b005dfd2"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.157.3"
  private_ips        = ["10.40.144.114", "10.40.148.138", "10.40.148.141", "10.40.150.62", "10.40.152.156", "10.40.153.156", "10.40.155.100", "10.40.155.52", "10.40.156.141", "10.40.156.156", "10.40.156.42", "10.40.157.3"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-09aa7e3eabd5bae59"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0b7275149b005dfd2"
  }
}

resource "aws_network_interface" "ac--eni-09694017972ef970e" {
  attachment {
    device_index = 0
    instance     = "i-08570bb3f058ae969"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.50.0.138"
  private_ips        = ["10.50.0.138"]
  private_ips_count  = 0
  security_groups    = ["sg-0038a707a311fb60e"]
  source_dest_check  = true
  subnet_id          = "subnet-0a7061207da3fd3a1"
}

resource "aws_network_interface" "ac--eni-09baee9deef558fbe" {
  attachment {
    device_index = 1
    instance     = "i-0130d3a39f9b2737d"
  }

  description        = "aws-K8S-i-0130d3a39f9b2737d"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.137.159"
  private_ips        = ["10.40.128.112", "10.40.128.116", "10.40.129.199", "10.40.131.159", "10.40.133.178", "10.40.133.30", "10.40.134.127", "10.40.134.82", "10.40.136.42", "10.40.137.159", "10.40.142.97", "10.40.143.251"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:29Z"
    "node.k8s.amazonaws.com/instance_id" = "i-0130d3a39f9b2737d"
  }
}

resource "aws_network_interface" "ac--eni-09c6135c2e641f3cf" {
  description        = "Instance Connect Endpoint (id: eice-008a0da699f4e3416)"
  interface_type     = "ec2_instance_connect_endpoint"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.138.64"
  private_ips        = ["10.40.138.64"]
  private_ips_count  = 0
  security_groups    = ["sg-0a729c4d996e71603"]
  source_dest_check  = false
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    InstanceConnectEndpointId = "eice-008a0da699f4e3416"
  }
}

resource "aws_network_interface" "ac--eni-0a10ae56e78a8e568" {
  attachment {
    device_index = 1
    instance     = "i-06ff6e10c20a9cca6"
  }

  description        = "aws-K8S-i-06ff6e10c20a9cca6"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.130.23"
  private_ips        = ["10.40.128.187", "10.40.129.129", "10.40.130.23", "10.40.131.151", "10.40.132.65", "10.40.135.126", "10.40.135.182", "10.40.136.192", "10.40.137.48", "10.40.138.194", "10.40.139.157", "10.40.142.159"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:30Z"
    "node.k8s.amazonaws.com/instance_id" = "i-06ff6e10c20a9cca6"
  }
}

resource "aws_network_interface" "ac--eni-0a643cd1e448b49d2" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.183.223"
  private_ips        = ["10.40.183.223"]
  private_ips_count  = 0
  security_groups    = ["sg-00d2ad44295562744"]
  source_dest_check  = true
  subnet_id          = "subnet-0f597fdaea877e775"
}

resource "aws_network_interface" "ac--eni-0b186caa94d4113dd" {
  description        = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.182.207"
  private_ips        = ["10.40.182.207"]
  private_ips_count  = 0
  security_groups    = ["sg-0833d70477fbb7784"]
  source_dest_check  = true
  subnet_id          = "subnet-0f597fdaea877e775"
}

resource "aws_network_interface" "ac--eni-0b36b26f9b2e4b8b5" {
  description        = "Network Interface for Transit Gateway Attachment tgw-attach-042f1363f096fd428"
  interface_type     = "transit_gateway"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.159.170"
  private_ips        = ["10.40.159.170"]
  private_ips_count  = 0
  source_dest_check  = false
  subnet_id          = "subnet-09aa7e3eabd5bae59"
}

resource "aws_network_interface" "ac--eni-0b9ddd75a0f8ba6d7" {
  attachment {
    device_index = 0
    instance     = "i-0faff146006ccaaaa"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.130.249"
  private_ips        = ["10.40.129.10", "10.40.129.176", "10.40.130.150", "10.40.130.249", "10.40.130.90", "10.40.132.76", "10.40.133.29", "10.40.136.194", "10.40.138.99", "10.40.140.82", "10.40.140.99", "10.40.142.20"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0faff146006ccaaaa"
  }
}

resource "aws_network_interface" "ac--eni-0beb2d999fc48b3a0" {
  description        = "RDSNetworkInterface"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.160.113"
  private_ips        = ["10.40.160.113"]
  private_ips_count  = 0
  security_groups    = ["sg-0f5a4f623d1148cb8"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-0c2391cb6f1415cca" {
  attachment {
    device_index = 0
    instance     = "i-0fe0cfe073be148d3"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.142.92"
  private_ips        = ["10.40.129.175", "10.40.133.249", "10.40.134.29", "10.40.136.65", "10.40.137.146", "10.40.137.161", "10.40.138.213", "10.40.139.50", "10.40.140.61", "10.40.142.92", "10.40.143.112", "10.40.143.65"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0fe0cfe073be148d3"
  }
}

resource "aws_network_interface" "ac--eni-0c96473f5346d3261" {
  attachment {
    device_index = 0
    instance     = "i-01c6720a66005f8bb"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.131.34"
  private_ips        = ["10.40.131.34"]
  private_ips_count  = 0
  security_groups    = ["sg-01b1d43d825df35b2", "sg-06f3998032b7fe04f"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-0d0ac92770b7d322f" {
  attachment {
    device_index = 0
    instance     = "i-02199476884f35278"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.255.255.202"
  private_ips        = ["10.255.255.202"]
  private_ips_count  = 0
  security_groups    = ["sg-01b1d43d825df35b2", "sg-057d948e0f36cae53"]
  source_dest_check  = true
  subnet_id          = "subnet-0428e0711a4ca2507"
}

resource "aws_network_interface" "ac--eni-0d7e2a750c70bd347" {
  attachment {
    device_index = 1
    instance     = "i-00f2670c88b40328e"
  }

  description        = "aws-K8S-i-00f2670c88b40328e"
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.129.222"
  private_ips        = ["10.40.129.128", "10.40.129.187", "10.40.129.222", "10.40.130.124", "10.40.130.193", "10.40.130.24", "10.40.130.3", "10.40.133.25", "10.40.135.148", "10.40.135.159", "10.40.136.238", "10.40.143.157"]
  private_ips_count  = 11
  security_groups    = ["sg-0dcadb90255b530c2"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"

  tags = {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/createdAt"   = "2023-11-09T19:26:31Z"
    "node.k8s.amazonaws.com/instance_id" = "i-00f2670c88b40328e"
  }
}

resource "aws_network_interface" "ac--eni-0e7d63893eba89817" {
  description        = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.170.218"
  private_ips        = ["10.40.170.218"]
  private_ips_count  = 0
  security_groups    = ["sg-0833d70477fbb7784"]
  source_dest_check  = true
  subnet_id          = "subnet-0fc2fa7eea70faa76"
}

resource "aws_network_interface" "ac--eni-0eaf80e04bf5257bb" {
  attachment {
    device_index = 0
    instance     = "i-03b6d854461e98f19"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.136.31"
  private_ips        = ["10.40.136.31"]
  private_ips_count  = 0
  security_groups    = ["sg-0a729c4d996e71603"]
  source_dest_check  = true
  subnet_id          = "subnet-002ad57466d0cfd46"
}

resource "aws_network_interface" "ac--eni-0f4e897bfc0d09dc0" {
  attachment {
    device_index = 0
    instance     = "i-08e2757a091b44f53"
  }

  interface_type     = "interface"
  ipv4_prefix_count  = 0
  ipv6_address_count = 0
  ipv6_prefix_count  = 0
  private_ip         = "10.40.26.137"
  private_ips        = ["10.40.26.137"]
  private_ips_count  = 0
  security_groups    = ["sg-0e1cf3b2b6001a62e"]
  source_dest_check  = true
  subnet_id          = "subnet-0124b4e97562ebbd7"
}
