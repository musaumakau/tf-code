resource "aws_docdb_cluster" "ac--docdb" {
  availability_zones              = var.aws_docdb_cluster_availability_zones
  backup_retention_period         = var.aws_docdb_cluster_backup_retention_period
  cluster_identifier              = var.aws_docdb_cluster_cluster_identifier
  cluster_members                 = var.aws_docdb_cluster_cluster_members
  db_cluster_parameter_group_name = var.aws_docdb_cluster_db_cluster_parameter_group_name
  db_subnet_group_name            = var.aws_docdb_cluster_db_subnet_group_name
  deletion_protection             = var.aws_docdb_cluster_deletion_protection
  engine                          = var.aws_docdb_cluster_engine
  engine_version                  = var.aws_docdb_cluster_engine_version
  kms_key_id                      = var.aws_docdb_cluster_kms_key_id
  master_username                 = var.aws_docdb_cluster_master_username
  port                            = var.aws_docdb_cluster_port
  preferred_backup_window         = var.aws_docdb_cluster_preferred_backup_window
  preferred_maintenance_window    = var.aws_docdb_cluster_preferred_maintenance_window
  storage_encrypted               = var.aws_docdb_cluster_storage_encrypted
  vpc_security_group_ids          = var.aws_docdb_cluster_vpc_security_group_ids
}

resource "aws_docdb_cluster_instance" "ac--docdb-1" {
  auto_minor_version_upgrade   = var.aws_docdb_cluster_instance_auto_minor_version_upgrade
  availability_zone            = var.aws_docdb_cluster_instance_availability_zone
  ca_cert_identifier           = var.aws_docdb_cluster_instance_ca_cert_identifier
  cluster_identifier           = var.aws_docdb_cluster_instance_cluster_identifier
  engine                       = var.aws_docdb_cluster_instance_engine
  identifier                   = var.aws_docdb_cluster_instance_identifier
  instance_class               = var.aws_docdb_cluster_instance_instance_class
  preferred_maintenance_window = var.aws_docdb_cluster_instance_preferred_maintenance_window
  promotion_tier               = var.aws_docdb_cluster_instance_promotion_tier
}

resource "aws_docdb_cluster_parameter_group" "ac--prod-docdb-parameter-group" {
  description = var.aws_docdb_cluster_parameter_group_description
  family      = var.aws_docdb_cluster_parameter_group_family
  name        = var.aws_docdb_cluster_parameter_group_name

  parameter {
    apply_method = "pending-reboot"
    name         = "tls"
    value        = "disabled"
  }
}

resource "aws_docdb_subnet_group" "ac--main-vpc-db-subnets" {
  description = var.aws_docdb_subnet_group_description
  name        = var.aws_docdb_subnet_group_name
  subnet_ids  = var.aws_docdb_subnet_group_subnet_ids
}
