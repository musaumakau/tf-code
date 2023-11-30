resource "aws_db_cluster_snapshot" "ac--prod-docdb-kenya-snapshot" {
  db_cluster_identifier          = "prod-docdb-kenya"
  db_cluster_snapshot_identifier = "prod-docdb-kenya-snapshot"
}

resource "aws_db_cluster_snapshot" "ac--prod-mysqldb-aurora-final-snapshot" {
  db_cluster_identifier          = "prod-mysqldb-aurora"
  db_cluster_snapshot_identifier = "prod-mysqldb-aurora-final-snapshot"
}

resource "aws_db_cluster_snapshot" "ac--prod-postgresqldb-aurora-final-snapshot" {
  db_cluster_identifier          = "prod-postgresqldb-aurora"
  db_cluster_snapshot_identifier = "prod-postgresqldb-aurora-final-snapshot"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-docdb-2023-11-30-00-11" {
  db_cluster_identifier          = "docdb"
  db_cluster_snapshot_identifier = "rds:docdb-2023-11-30-00-11"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-24-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-24-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-25-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-25-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-26-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-26-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-27-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-27-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-28-01-38" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-28-01-38"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-29-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-29-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-mysql-aurora-cluster-2023-11-30-01-37" {
  db_cluster_identifier          = "mysql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:mysql-aurora-cluster-2023-11-30-01-37"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-24-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-24-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-25-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-25-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-26-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-26-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-27-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-27-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-28-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-28-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-29-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-29-03-06"
}

resource "aws_db_cluster_snapshot" "ac--rds-003A-postgresql-aurora-cluster-2023-11-30-03-06" {
  db_cluster_identifier          = "postgresql-aurora-cluster"
  db_cluster_snapshot_identifier = "rds:postgresql-aurora-cluster-2023-11-30-03-06"
}

resource "aws_db_option_group" "ac--default-003A-aurora-mysql-8-0" {
  engine_name              = "aurora-mysql"
  major_engine_version     = "8.0"
  name                     = "default:aurora-mysql-8-0"
  option_group_description = "Default option group for aurora-mysql 8.0"
}

resource "aws_db_option_group" "ac--default-003A-aurora-postgresql-13" {
  engine_name              = "aurora-postgresql"
  major_engine_version     = "13"
  name                     = "default:aurora-postgresql-13"
  option_group_description = "Default option group for aurora-postgresql 13"
}

resource "aws_db_option_group" "ac--default-003A-docdb-4-0" {
  engine_name              = "docdb"
  major_engine_version     = "4.0"
  name                     = "default:docdb-4-0"
  option_group_description = "Default option group for docdb 4.0"
}

resource "aws_db_parameter_group" "ac--aurora-postgresql13-pg" {
  description = "aurora-postgresql13-pg"
  family      = "aurora-postgresql13"
  name        = "aurora-postgresql13-pg"
}

resource "aws_db_parameter_group" "ac--custom-aurora-mysql8-parameter-group" {
  description = "custom-aurora-mysql8.0"
  family      = "aurora-mysql8.0"
  name        = "custom-aurora-mysql8-parameter-group"

  parameter {
    apply_method = "immediate"
    name         = "slow_query_log"
    value        = "1"
  }
}

resource "aws_db_parameter_group" "ac--default-002E-docdb4-002E-0" {
  description = "Default parameter group for docdb4.0"
  family      = "docdb4.0"
  name        = "default.docdb4.0"
}

resource "aws_rds_cluster" "ac--mysql-aurora-cluster" {
  allocated_storage                   = 1
  availability_zones                  = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  backtrack_window                    = 0
  backup_retention_period             = 7
  cluster_identifier                  = "mysql-aurora-cluster"
  cluster_members                     = ["mysql-aurora-cluster"]
  copy_tags_to_snapshot               = true
  db_cluster_parameter_group_name     = "custom-aurora-mysql8-parameter-group"
  db_subnet_group_name                = "main-vpc-db-subnets"
  deletion_protection                 = true
  enable_http_endpoint                = false
  enabled_cloudwatch_logs_exports     = ["audit", "error", "general", "slowquery"]
  engine                              = "aurora-mysql"
  engine_mode                         = "provisioned"
  engine_version                      = "8.0.mysql_aurora.3.02.2"
  iam_database_authentication_enabled = false
  iops                                = 0
  kms_key_id                          = "arn:aws:kms:eu-west-2:766176144542:key/9d37b450-2749-440d-843e-c6d56bfbc5ac"
  master_username                     = "prodmysqladmin"
  network_type                        = "IPV4"
  port                                = 3306
  preferred_backup_window             = "01:31-02:01"
  preferred_maintenance_window        = "mon:03:58-mon:04:28"
  storage_encrypted                   = true
  vpc_security_group_ids              = ["sg-0f5a4f623d1148cb8"]
}

resource "aws_rds_cluster" "ac--postgresql-aurora-cluster" {
  allocated_storage                   = 1
  availability_zones                  = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  backtrack_window                    = 0
  backup_retention_period             = 7
  cluster_identifier                  = "postgresql-aurora-cluster"
  cluster_members                     = ["postgresql-aurora-cluster"]
  copy_tags_to_snapshot               = true
  db_cluster_parameter_group_name     = "aurora-postgres13-cluster-pg"
  db_subnet_group_name                = "main-vpc-db-subnets"
  deletion_protection                 = true
  enable_http_endpoint                = false
  enabled_cloudwatch_logs_exports     = ["postgresql"]
  engine                              = "aurora-postgresql"
  engine_mode                         = "provisioned"
  engine_version                      = "13.8"
  iam_database_authentication_enabled = false
  iops                                = 0
  kms_key_id                          = "arn:aws:kms:eu-west-2:766176144542:key/9d37b450-2749-440d-843e-c6d56bfbc5ac"
  master_username                     = "prodpostgresadm"
  network_type                        = "IPV4"
  port                                = 5432
  preferred_backup_window             = "02:54-03:24"
  preferred_maintenance_window        = "mon:00:58-mon:01:28"

  serverlessv2_scaling_configuration {
    max_capacity = 4
    min_capacity = 1
  }

  storage_encrypted      = true
  vpc_security_group_ids = ["sg-00d2ad44295562744"]
}
