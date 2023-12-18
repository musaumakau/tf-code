resource "aws_db_cluster_snapshot" "ac--prod-docdb-kenya-snapshot" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--prod-mysqldb-aurora-final-snapshot" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--prod-postgresqldb-aurora-final-snapshot" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-docdb-2023-12-18-00-11" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-12-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-13-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-14-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-15-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-16-01-38" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-17-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-12-18-01-37" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-12-03-07" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-13-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-14-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-15-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-16-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-17-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-12-18-03-06" {
  db_cluster_identifier          = var.aws_db_cluster_snapshot_db_cluster_identifier
  db_cluster_snapshot_identifier = var.aws_db_cluster_snapshot_db_cluster_snapshot_identifier
}

resource "aws_db_option_group" "ac--default-003A-aurora-mysql-8-0" {
  engine_name              = var.aws_db_option_group_engine_name
  major_engine_version     = var.aws_db_option_group_major_engine_version
  name                     = var.aws_db_option_group_name
  option_group_description = var.aws_db_option_group_option_group_description
}

resource "aws_db_option_group" "ac--default-003A-aurora-postgresql-13" {
  engine_name              = var.aws_db_option_group_engine_name
  major_engine_version     = var.aws_db_option_group_major_engine_version
  name                     = var.aws_db_option_group_name
  option_group_description = var.aws_db_option_group_option_group_description
}

resource "aws_db_option_group" "ac--default-003A-docdb-4-0" {
  engine_name              = var.aws_db_option_group_engine_name
  major_engine_version     = var.aws_db_option_group_major_engine_version
  name                     = var.aws_db_option_group_name
  option_group_description = var.aws_db_option_group_option_group_description
}

resource "aws_rds_cluster" "ac--mysql-aurora-cluster" {
  allocated_storage                   = var.aws_rds_cluster_allocated_storage
  availability_zones                  = var.aws_rds_cluster_availability_zones
  backtrack_window                    = var.aws_rds_cluster_backtrack_window
  backup_retention_period             = var.aws_rds_cluster_backup_retention_period
  cluster_identifier                  = var.aws_rds_cluster_cluster_identifier
  cluster_members                     = var.aws_rds_cluster_cluster_members
  copy_tags_to_snapshot               = var.aws_rds_cluster_copy_tags_to_snapshot
  db_cluster_parameter_group_name     = var.aws_rds_cluster_db_cluster_parameter_group_name
  db_subnet_group_name                = var.aws_rds_cluster_db_subnet_group_name
  deletion_protection                 = var.aws_rds_cluster_deletion_protection
  enable_http_endpoint                = var.aws_rds_cluster_enable_http_endpoint
  enabled_cloudwatch_logs_exports     = var.aws_rds_cluster_enabled_cloudwatch_logs_exports
  engine                              = var.aws_rds_cluster_engine
  engine_mode                         = var.aws_rds_cluster_engine_mode
  engine_version                      = var.aws_rds_cluster_engine_version
  iam_database_authentication_enabled = var.aws_rds_cluster_iam_database_authentication_enabled
  iops                                = var.aws_rds_cluster_iops
  kms_key_id                          = var.aws_rds_cluster_kms_key_id
  master_username                     = var.aws_rds_cluster_master_username
  network_type                        = var.aws_rds_cluster_network_type
  port                                = var.aws_rds_cluster_port
  preferred_backup_window             = var.aws_rds_cluster_preferred_backup_window
  preferred_maintenance_window        = var.aws_rds_cluster_preferred_maintenance_window
  storage_encrypted                   = var.aws_rds_cluster_storage_encrypted
  vpc_security_group_ids              = var.aws_rds_cluster_vpc_security_group_ids
}

resource "aws_rds_cluster" "ac--postgresql-aurora-cluster" {
  allocated_storage                   = var.aws_rds_cluster_allocated_storage
  availability_zones                  = var.aws_rds_cluster_availability_zones
  backtrack_window                    = var.aws_rds_cluster_backtrack_window
  backup_retention_period             = var.aws_rds_cluster_backup_retention_period
  cluster_identifier                  = var.aws_rds_cluster_cluster_identifier
  cluster_members                     = var.aws_rds_cluster_cluster_members
  copy_tags_to_snapshot               = var.aws_rds_cluster_copy_tags_to_snapshot
  db_cluster_parameter_group_name     = var.aws_rds_cluster_db_cluster_parameter_group_name
  db_subnet_group_name                = var.aws_rds_cluster_db_subnet_group_name
  deletion_protection                 = var.aws_rds_cluster_deletion_protection
  enable_http_endpoint                = var.aws_rds_cluster_enable_http_endpoint
  enabled_cloudwatch_logs_exports     = var.aws_rds_cluster_enabled_cloudwatch_logs_exports
  engine                              = var.aws_rds_cluster_engine
  engine_mode                         = var.aws_rds_cluster_engine_mode
  engine_version                      = var.aws_rds_cluster_engine_version
  iam_database_authentication_enabled = var.aws_rds_cluster_iam_database_authentication_enabled
  iops                                = var.aws_rds_cluster_iops
  kms_key_id                          = var.aws_rds_cluster_kms_key_id
  master_username                     = var.aws_rds_cluster_master_username
  network_type                        = var.aws_rds_cluster_network_type
  port                                = var.aws_rds_cluster_port
  preferred_backup_window             = var.aws_rds_cluster_preferred_backup_window
  preferred_maintenance_window        = var.aws_rds_cluster_preferred_maintenance_window

  serverlessv2_scaling_configuration {
    max_capacity = 4
    min_capacity = 1
  }

  storage_encrypted      = var.aws_rds_cluster_storage_encrypted
  vpc_security_group_ids = var.aws_rds_cluster_vpc_security_group_ids
}
