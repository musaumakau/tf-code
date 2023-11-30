resource "aws_instance" "ac--i-008d7e6614222b602-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.153.75"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.144.149", "10.40.144.221", "10.40.146.245", "10.40.147.19", "10.40.149.0", "10.40.150.18", "10.40.153.242", "10.40.154.177", "10.40.156.249", "10.40.157.120", "10.40.159.23"]
  source_dest_check     = true
  subnet_id             = "subnet-09aa7e3eabd5bae59"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-00f2670c88b40328e-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.132.140"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.129.106", "10.40.134.94", "10.40.136.135", "10.40.136.170", "10.40.136.180", "10.40.136.212", "10.40.136.25", "10.40.137.155", "10.40.142.189", "10.40.142.74", "10.40.143.117"]
  source_dest_check     = true
  subnet_id             = "subnet-002ad57466d0cfd46"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-0130d3a39f9b2737d-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.141.170"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.128.254", "10.40.129.163", "10.40.132.168", "10.40.134.97", "10.40.136.139", "10.40.136.227", "10.40.137.113", "10.40.138.182", "10.40.139.45", "10.40.142.28", "10.40.143.230"]
  source_dest_check     = true
  subnet_id             = "subnet-002ad57466d0cfd46"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-01c6720a66005f8bb-1" {
  ami                         = "ami-082ed5214a6e6d7a7"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "SSMInstanceProfile"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = 0
  key_name                             = "elk-prod-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.131.34"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 5000
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-002ad57466d0cfd46"

  tags = {
    Name               = "elk server"
    QSConfigName-gj7vw = "patch manager"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01b1d43d825df35b2", "sg-06f3998032b7fe04f"]
}

resource "aws_instance" "ac--i-01c7ef7ba646e6a54-1" {
  ami                         = "ami-0b594cc165f9cddaa"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.small"
  ipv6_address_count                   = 0
  key_name                             = "wordpress"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.155.14"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-09aa7e3eabd5bae59"

  tags = {
    Name               = "wordpress"
    QSConfigName-gj7vw = "patch manager"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01b1d43d825df35b2", "sg-0bcbcba14d5ab6bd5"]
}

resource "aws_instance" "ac--i-02199476884f35278-1" {
  ami                         = "ami-048fb7a1362d5fe3d"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "SSMInstanceProfile"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.nano"
  ipv6_address_count                   = 0
  key_name                             = "prod-proxy-server"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.255.255.202"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 8
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-0428e0711a4ca2507"

  tags = {
    Name               = "proxy-server"
    QSConfigName-gj7vw = "patch manager"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01b1d43d825df35b2", "sg-057d948e0f36cae53"]
}

resource "aws_instance" "ac--i-03b6d854461e98f19" {
  ami                         = "ami-0b594cc165f9cddaa"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = 0
  key_name                             = "prod-kenya-BastionHost-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.136.31"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-002ad57466d0cfd46"

  tags = {
    Name               = "bastion"
    QSConfigName-gj7vw = "patch manager"
    autostart          = "no"
    autostop           = "yes"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0a729c4d996e71603"]
}

resource "aws_instance" "ac--i-06ff6e10c20a9cca6-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.136.144"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.128.100", "10.40.128.165", "10.40.130.139", "10.40.132.172", "10.40.132.182", "10.40.134.125", "10.40.135.180", "10.40.135.201", "10.40.136.166", "10.40.137.85", "10.40.140.177"]
  source_dest_check     = true
  subnet_id             = "subnet-002ad57466d0cfd46"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-07a923548d681a04f-1" {
  ami                         = "ami-0b594cc165f9cddaa"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.medium"
  ipv6_address_count                   = 0
  key_name                             = "prod-jenkins-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.147.225"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 25
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-09aa7e3eabd5bae59"

  tags = {
    Name               = "jenkins"
    QSConfigName-gj7vw = "patch manager"
    autostop           = "yes"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01b1d43d825df35b2", "sg-02e85199df1ef741c"]
}

resource "aws_instance" "ac--i-08570bb3f058ae969" {
  ami                         = "ami-05d2105bdf8b3e8e6"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 2
    threads_per_core = 2
  }

  disable_api_stop        = false
  disable_api_termination = true

  ebs_block_device {
    delete_on_termination = false
    device_name           = "/dev/sdb"
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 768
    volume_type           = "gp3"
  }

  ebs_optimized = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "m5.xlarge"
  ipv6_address_count                   = 0
  key_name                             = "ep-server-qradar-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.50.0.138"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 122
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-0a7061207da3fd3a1"

  tags = {
    Name               = "QRadar_EC2_AWS_solv-kenya_eu-west-2"
    QSConfigName-gj7vw = "patch manager"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0038a707a311fb60e"]
}

resource "aws_instance" "ac--i-08e2757a091b44f53" {
  ami                         = "ami-0cf6f2b898ac0b337"
  associate_public_ip_address = true
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 1
  }

  credit_specification {
    cpu_credits = "standard"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t2.micro"
  ipv6_address_count                   = 0
  key_name                             = "prod-kenya-BastionHost-key"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "required"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.26.137"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    iops                  = 3000
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    throughput            = 125
    volume_size           = 8
    volume_type           = "gp3"
  }

  source_dest_check = true
  subnet_id         = "subnet-0124b4e97562ebbd7"

  tags = {
    Name               = "public-backup-bastion"
    QSConfigName-gj7vw = "patch manager"
    autostop           = "yes"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-0e1cf3b2b6001a62e"]
}

resource "aws_instance" "ac--i-09b50ae9297aec290-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.149.97"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.144.192", "10.40.145.57", "10.40.146.194", "10.40.146.254", "10.40.147.39", "10.40.148.229", "10.40.148.3", "10.40.149.42", "10.40.153.183", "10.40.157.10", "10.40.157.216"]
  source_dest_check     = true
  subnet_id             = "subnet-09aa7e3eabd5bae59"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-0b7275149b005dfd2-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.157.3"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.144.114", "10.40.148.138", "10.40.148.141", "10.40.150.62", "10.40.152.156", "10.40.153.156", "10.40.155.100", "10.40.155.52", "10.40.156.141", "10.40.156.156", "10.40.156.42"]
  source_dest_check     = true
  subnet_id             = "subnet-09aa7e3eabd5bae59"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-0c49d385e8131bdf3-1" {
  ami                         = "ami-0bb249ffedfb10ee1"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = true

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "AmazonSSMRoleForInstancesQuickSetup"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0
  key_name                             = "prod-kenya-metabase"

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.130.84"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 48
    volume_type           = "gp2"
  }

  source_dest_check = true
  subnet_id         = "subnet-002ad57466d0cfd46"

  tags = {
    MetaBaseAutoStop   = "MetaBaseAutoStop"
    Name               = "metabase"
    QSConfigName-gj7vw = "patch manager"
    autostart          = "yes"
    autostop           = "yes"
  }

  tenancy                = "default"
  vpc_security_group_ids = ["sg-01b1d43d825df35b2", "sg-0f018fbcd4e3fd7cd"]
}

resource "aws_instance" "ac--i-0e5f6eaf5507b2388-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2b"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.159.213"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.145.194", "10.40.147.116", "10.40.149.60", "10.40.150.225", "10.40.153.107", "10.40.153.46", "10.40.155.128", "10.40.155.6", "10.40.156.140", "10.40.156.18", "10.40.157.41"]
  source_dest_check     = true
  subnet_id             = "subnet-09aa7e3eabd5bae59"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-0faff146006ccaaaa-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.130.249"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.129.10", "10.40.129.176", "10.40.130.150", "10.40.130.90", "10.40.132.76", "10.40.133.29", "10.40.136.194", "10.40.138.99", "10.40.140.82", "10.40.140.99", "10.40.142.20"]
  source_dest_check     = true
  subnet_id             = "subnet-002ad57466d0cfd46"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}

resource "aws_instance" "ac--i-0fe0cfe073be148d3-1" {
  ami                         = "ami-0365e7b3e860a3b82"
  associate_public_ip_address = false
  availability_zone           = "eu-west-2a"

  capacity_reservation_specification {
    capacity_reservation_preference = "open"
  }

  cpu_options {
    core_count       = 1
    threads_per_core = 2
  }

  credit_specification {
    cpu_credits = "unlimited"
  }

  disable_api_stop        = false
  disable_api_termination = false
  ebs_optimized           = false

  enclave_options {
    enabled = false
  }

  get_password_data                    = false
  hibernation                          = false
  iam_instance_profile                 = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  instance_initiated_shutdown_behavior = "stop"
  instance_type                        = "t3.large"
  ipv6_address_count                   = 0

  launch_template {
    name    = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
    version = "1"
  }

  maintenance_options {
    auto_recovery = "default"
  }

  metadata_options {
    http_endpoint               = "enabled"
    http_put_response_hop_limit = 2
    http_tokens                 = "optional"
    instance_metadata_tags      = "disabled"
  }

  monitoring                 = false
  placement_partition_number = 0

  private_dns_name_options {
    enable_resource_name_dns_a_record    = false
    enable_resource_name_dns_aaaa_record = false
    hostname_type                        = "ip-name"
  }

  private_ip = "10.40.142.92"

  root_block_device {
    delete_on_termination = true
    encrypted             = true
    kms_key_id            = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
    volume_size           = 20
    volume_type           = "gp2"
  }

  secondary_private_ips = ["10.40.129.175", "10.40.133.249", "10.40.134.29", "10.40.136.65", "10.40.137.146", "10.40.137.161", "10.40.138.213", "10.40.139.50", "10.40.140.61", "10.40.143.112", "10.40.143.65"]
  source_dest_check     = true
  subnet_id             = "subnet-002ad57466d0cfd46"

  tags = {
    QSConfigName-gj7vw                      = "patch manager"
    "eks:cluster-name"                      = "eks-cluster"
    "eks:nodegroup-name"                    = "on-demand_node-grp-1"
    "k8s.io/cluster-autoscaler/eks-cluster" = "owned"
    "k8s.io/cluster-autoscaler/enabled"     = "true"
    "kubernetes.io/cluster/eks-cluster"     = "owned"
  }

  tenancy                = "default"
  user_data              = "2d544fc5849c459427de48ef0f29a93decf68e56"
  vpc_security_group_ids = ["sg-0dcadb90255b530c2"]
}
