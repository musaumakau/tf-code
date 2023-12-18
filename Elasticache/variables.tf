variable "aws_elasticache_cluster_auto_minor_version_upgrade" {
  default = "true"
  type    = string
}

variable "aws_elasticache_cluster_availability_zone" {
  default = "eu-west-2a"
  type    = string
}

variable "aws_elasticache_cluster_az_mode" {
  default = "single-az"
  type    = string
}

variable "aws_elasticache_cluster_cluster_id" {
  default = "redis-001"
  type    = string
}

variable "aws_elasticache_cluster_engine" {
  default = "redis"
  type    = string
}

variable "aws_elasticache_cluster_engine_version" {
  default = "7.0"
  type    = string
}

variable "aws_elasticache_cluster_ip_discovery" {
  default = "ipv4"
  type    = string
}

variable "aws_elasticache_cluster_maintenance_window" {
  default = "tue:05:30-tue:06:30"
  type    = string
}

variable "aws_elasticache_cluster_network_type" {
  default = "ipv4"
  type    = string
}

variable "aws_elasticache_cluster_node_type" {
  default = "cache.t3.medium"
  type    = string
}

variable "aws_elasticache_cluster_num_cache_nodes" {
  default = 1
  type    = number
}

variable "aws_elasticache_cluster_parameter_group_name" {
  default = "default.redis7"
  type    = string
}

variable "aws_elasticache_cluster_port" {
  default = 6379
  type    = number
}

variable "aws_elasticache_cluster_security_group_ids" {
  default = ["sg-0eb93ca9d68a52789"]
  type    = set(string)
}

variable "aws_elasticache_cluster_snapshot_retention_limit" {
  default = 0
  type    = number
}

variable "aws_elasticache_cluster_snapshot_window" {
  default = "00:00-01:00"
  type    = string
}

variable "aws_elasticache_parameter_group_description" {
  default = "Default parameter group for redis7"
  type    = string
}

variable "aws_elasticache_parameter_group_family" {
  default = "redis7"
  type    = string
}

variable "aws_elasticache_parameter_group_name" {
  default = "default.redis7"
  type    = string
}

variable "aws_elasticache_replication_group_at_rest_encryption_enabled" {
  default = true
  type    = bool
}

variable "aws_elasticache_replication_group_auto_minor_version_upgrade" {
  default = "true"
  type    = string
}

variable "aws_elasticache_replication_group_automatic_failover_enabled" {
  default = false
  type    = bool
}

variable "aws_elasticache_replication_group_data_tiering_enabled" {
  default = false
  type    = bool
}

variable "aws_elasticache_replication_group_description" {
  default = " "
  type    = string
}

variable "aws_elasticache_replication_group_engine" {
  default = "redis"
  type    = string
}

variable "aws_elasticache_replication_group_engine_version" {
  default = "7.0"
  type    = string
}

variable "aws_elasticache_replication_group_maintenance_window" {
  default = "tue:05:30-tue:06:30"
  type    = string
}

variable "aws_elasticache_replication_group_multi_az_enabled" {
  default = false
  type    = bool
}

variable "aws_elasticache_replication_group_node_type" {
  default = "cache.t3.medium"
  type    = string
}

variable "aws_elasticache_replication_group_num_cache_clusters" {
  default = 1
  type    = number
}

variable "aws_elasticache_replication_group_num_node_groups" {
  default = 1
  type    = number
}

variable "aws_elasticache_replication_group_parameter_group_name" {
  default = "default.redis7"
  type    = string
}

variable "aws_elasticache_replication_group_port" {
  default = 6379
  type    = number
}

variable "aws_elasticache_replication_group_replicas_per_node_group" {
  default = 0
  type    = number
}

variable "aws_elasticache_replication_group_replication_group_id" {
  default = "redis"
  type    = string
}

variable "aws_elasticache_replication_group_security_group_ids" {
  default = ["sg-0eb93ca9d68a52789"]
  type    = set(string)
}

variable "aws_elasticache_replication_group_snapshot_retention_limit" {
  default = 0
  type    = number
}

variable "aws_elasticache_replication_group_snapshot_window" {
  default = "00:00-01:00"
  type    = string
}

variable "aws_elasticache_replication_group_subnet_group_name" {
  default = "main-vpc-db-subnets"
  type    = string
}

variable "aws_elasticache_replication_group_transit_encryption_enabled" {
  default = false
  type    = bool
}

variable "aws_elasticache_subnet_group_description" {
  default = " "
  type    = string
}

variable "aws_elasticache_subnet_group_name" {
  default = "main-vpc-db-subnets"
  type    = string
}

variable "aws_elasticache_subnet_group_subnet_ids" {
  default = ["subnet-0f597fdaea877e775", "subnet-0fc2fa7eea70faa76"]
  type    = set(string)
}
