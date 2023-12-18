output "aws_elasticache_cluster_arn" {
  value = aws_elasticache_cluster.ac--redis-001.arn
}

output "aws_elasticache_cluster_engine_version_actual" {
  value = aws_elasticache_cluster.ac--redis-001.engine_version_actual
}

output "aws_elasticache_parameter_group_arn" {
  value = aws_elasticache_parameter_group.ac--default-002E-redis7.arn
}

output "aws_elasticache_replication_group_arn" {
  value = aws_elasticache_replication_group.ac--redis.arn
}

output "aws_elasticache_replication_group_engine_version_actual" {
  value = aws_elasticache_replication_group.ac--redis.engine_version_actual
}

output "aws_elasticache_replication_group_primary_endpoint_address" {
  value = aws_elasticache_replication_group.ac--redis.primary_endpoint_address
}

output "aws_elasticache_replication_group_reader_endpoint_address" {
  value = aws_elasticache_replication_group.ac--redis.reader_endpoint_address
}

output "aws_elasticache_subnet_group_arn" {
  value = aws_elasticache_subnet_group.ac--main-vpc-db-subnets-1.arn
}
