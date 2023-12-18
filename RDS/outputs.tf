output "aws_db_cluster_snapshot_db_cluster_snapshot_arn" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.db_cluster_snapshot_arn
}

output "aws_db_cluster_snapshot_engine" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.engine
}

output "aws_db_cluster_snapshot_engine_version" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.engine_version
}

output "aws_db_cluster_snapshot_kms_key_id" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.kms_key_id
}

output "aws_db_cluster_snapshot_license_model" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.license_model
}

output "aws_db_cluster_snapshot_snapshot_type" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.snapshot_type
}

output "aws_db_cluster_snapshot_status" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.status
}

output "aws_db_cluster_snapshot_vpc_id" {
  value = aws_db_cluster_snapshot.ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06.vpc_id
}

output "aws_db_option_group_arn" {
  value = aws_db_option_group.ac--default-003A-aurora-postgresql-13.arn
}

output "aws_rds_cluster_arn" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.arn
}

output "aws_rds_cluster_cluster_resource_id" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.cluster_resource_id
}

output "aws_rds_cluster_endpoint" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.endpoint
}

output "aws_rds_cluster_engine_version_actual" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.engine_version_actual
}

output "aws_rds_cluster_hosted_zone_id" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.hosted_zone_id
}

output "aws_rds_cluster_reader_endpoint" {
  value = aws_rds_cluster.ac--postgresql-aurora-cluster.reader_endpoint
}
