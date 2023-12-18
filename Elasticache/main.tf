resource "aws_elasticache_cluster" "ac--redis-001" {
  auto_minor_version_upgrade = var.aws_elasticache_cluster_auto_minor_version_upgrade
  availability_zone          = var.aws_elasticache_cluster_availability_zone
  az_mode                    = var.aws_elasticache_cluster_az_mode
  cluster_id                 = var.aws_elasticache_cluster_cluster_id
  engine                     = var.aws_elasticache_cluster_engine
  engine_version             = var.aws_elasticache_cluster_engine_version
  ip_discovery               = var.aws_elasticache_cluster_ip_discovery
  maintenance_window         = var.aws_elasticache_cluster_maintenance_window
  network_type               = var.aws_elasticache_cluster_network_type
  node_type                  = var.aws_elasticache_cluster_node_type
  num_cache_nodes            = var.aws_elasticache_cluster_num_cache_nodes
  parameter_group_name       = var.aws_elasticache_cluster_parameter_group_name
  port                       = var.aws_elasticache_cluster_port
  replication_group_id       = aws_elasticache_replication_group.ac--redis.id
  security_group_ids         = var.aws_elasticache_cluster_security_group_ids
  snapshot_retention_limit   = var.aws_elasticache_cluster_snapshot_retention_limit
  snapshot_window            = var.aws_elasticache_cluster_snapshot_window
  subnet_group_name          = aws_elasticache_subnet_group.ac--main-vpc-db-subnets-1.name
}

resource "aws_elasticache_parameter_group" "ac--default-002E-redis7" {
  description = var.aws_elasticache_parameter_group_description
  family      = var.aws_elasticache_parameter_group_family
  name        = var.aws_elasticache_parameter_group_name
}

resource "aws_elasticache_replication_group" "ac--redis" {
  at_rest_encryption_enabled = var.aws_elasticache_replication_group_at_rest_encryption_enabled
  auto_minor_version_upgrade = var.aws_elasticache_replication_group_auto_minor_version_upgrade
  automatic_failover_enabled = var.aws_elasticache_replication_group_automatic_failover_enabled
  data_tiering_enabled       = var.aws_elasticache_replication_group_data_tiering_enabled
  description                = var.aws_elasticache_replication_group_description
  engine                     = var.aws_elasticache_replication_group_engine
  engine_version             = var.aws_elasticache_replication_group_engine_version
  maintenance_window         = var.aws_elasticache_replication_group_maintenance_window
  multi_az_enabled           = var.aws_elasticache_replication_group_multi_az_enabled
  node_type                  = var.aws_elasticache_replication_group_node_type
  num_cache_clusters         = var.aws_elasticache_replication_group_num_cache_clusters
  num_node_groups            = var.aws_elasticache_replication_group_num_node_groups
  parameter_group_name       = var.aws_elasticache_replication_group_parameter_group_name
  port                       = var.aws_elasticache_replication_group_port
  replicas_per_node_group    = var.aws_elasticache_replication_group_replicas_per_node_group
  replication_group_id       = var.aws_elasticache_replication_group_replication_group_id
  security_group_ids         = var.aws_elasticache_replication_group_security_group_ids
  snapshot_retention_limit   = var.aws_elasticache_replication_group_snapshot_retention_limit
  snapshot_window            = var.aws_elasticache_replication_group_snapshot_window
  subnet_group_name          = var.aws_elasticache_replication_group_subnet_group_name
  transit_encryption_enabled = var.aws_elasticache_replication_group_transit_encryption_enabled
}

resource "aws_elasticache_subnet_group" "ac--main-vpc-db-subnets-1" {
  description = var.aws_elasticache_subnet_group_description
  name        = var.aws_elasticache_subnet_group_name
  subnet_ids  = var.aws_elasticache_subnet_group_subnet_ids
}
