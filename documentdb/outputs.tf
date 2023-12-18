output "aws_docdb_cluster_arn" {
  value = aws_docdb_cluster.ac--docdb.arn
}

output "aws_docdb_cluster_cluster_resource_id" {
  value = aws_docdb_cluster.ac--docdb.cluster_resource_id
}

output "aws_docdb_cluster_endpoint" {
  value = aws_docdb_cluster.ac--docdb.endpoint
}

output "aws_docdb_cluster_hosted_zone_id" {
  value = aws_docdb_cluster.ac--docdb.hosted_zone_id
}

output "aws_docdb_cluster_instance_arn" {
  value = aws_docdb_cluster_instance.ac--docdb-1.arn
}

output "aws_docdb_cluster_instance_db_subnet_group_name" {
  value = aws_docdb_cluster_instance.ac--docdb-1.db_subnet_group_name
}

output "aws_docdb_cluster_instance_dbi_resource_id" {
  value = aws_docdb_cluster_instance.ac--docdb-1.dbi_resource_id
}

output "aws_docdb_cluster_instance_endpoint" {
  value = aws_docdb_cluster_instance.ac--docdb-1.endpoint
}

output "aws_docdb_cluster_instance_engine_version" {
  value = aws_docdb_cluster_instance.ac--docdb-1.engine_version
}

output "aws_docdb_cluster_instance_kms_key_id" {
  value = aws_docdb_cluster_instance.ac--docdb-1.kms_key_id
}

output "aws_docdb_cluster_instance_preferred_backup_window" {
  value = aws_docdb_cluster_instance.ac--docdb-1.preferred_backup_window
}

output "aws_docdb_cluster_parameter_group_arn" {
  value = aws_docdb_cluster_parameter_group.ac--prod-docdb-parameter-group.arn
}

output "aws_docdb_cluster_reader_endpoint" {
  value = aws_docdb_cluster.ac--docdb.reader_endpoint
}

output "aws_docdb_subnet_group_arn" {
  value = aws_docdb_subnet_group.ac--main-vpc-db-subnets.arn
}
