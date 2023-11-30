resource "aws_elasticache_cluster" "ac--redis-001" {
  auto_minor_version_upgrade = "true"
  availability_zone          = "eu-west-2a"
  az_mode                    = "single-az"
  cluster_id                 = "redis-001"
  engine                     = "redis"
  engine_version             = "7.0"
  ip_discovery               = "ipv4"
  maintenance_window         = "tue:05:30-tue:06:30"
  network_type               = "ipv4"
  node_type                  = "cache.t3.medium"
  num_cache_nodes            = 1
  parameter_group_name       = "default.redis7"
  port                       = 6379
  replication_group_id       = aws_elasticache_replication_group.ac--redis.id
  security_group_ids         = ["sg-0eb93ca9d68a52789"]
  snapshot_retention_limit   = 0
  snapshot_window            = "00:00-01:00"
  subnet_group_name          = aws_elasticache_subnet_group.ac--main-vpc-db-subnets-1.name
}

resource "aws_elasticache_parameter_group" "ac--default-002E-redis7" {
  description = "Default parameter group for redis7"
  family      = "redis7"
  name        = "default.redis7"
}

resource "aws_elasticache_replication_group" "ac--redis" {
  at_rest_encryption_enabled = true
  auto_minor_version_upgrade = "true"
  automatic_failover_enabled = false
  data_tiering_enabled       = false
  description                = " "
  engine                     = "redis"
  engine_version             = "7.0"
  maintenance_window         = "tue:05:30-tue:06:30"
  multi_az_enabled           = false
  node_type                  = "cache.t3.medium"
  num_cache_clusters         = 1
  num_node_groups            = 1
  parameter_group_name       = "default.redis7"
  port                       = 6379
  replicas_per_node_group    = 0
  replication_group_id       = "redis"
  security_group_ids         = ["sg-0eb93ca9d68a52789"]
  snapshot_retention_limit   = 0
  snapshot_window            = "00:00-01:00"
  subnet_group_name          = "main-vpc-db-subnets"
  transit_encryption_enabled = false
}

resource "aws_elasticache_subnet_group" "ac--main-vpc-db-subnets-1" {
  description = " "
  name        = "main-vpc-db-subnets"
  subnet_ids  = ["subnet-0f597fdaea877e775", "subnet-0fc2fa7eea70faa76"]
}
