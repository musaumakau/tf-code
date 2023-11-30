resource "aws_docdb_cluster" "ac--docdb" {
  availability_zones              = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  backup_retention_period         = 1
  cluster_identifier              = "docdb"
  cluster_members                 = ["docdb"]
  db_cluster_parameter_group_name = "prod-docdb-parameter-group"
  db_subnet_group_name            = "main-vpc-db-subnets"
  deletion_protection             = true
  engine                          = "docdb"
  engine_version                  = "4.0.0"
  kms_key_id                      = "arn:aws:kms:eu-west-2:766176144542:key/9d37b450-2749-440d-843e-c6d56bfbc5ac"
  master_username                 = "proddocdbadmin"
  port                            = 27017
  preferred_backup_window         = "00:00-00:30"
  preferred_maintenance_window    = "wed:22:31-wed:23:01"
  storage_encrypted               = true
  vpc_security_group_ids          = ["sg-0b894407029c80409"]
}

resource "aws_docdb_cluster_instance" "ac--docdb-1" {
  auto_minor_version_upgrade   = true
  availability_zone            = "eu-west-2a"
  ca_cert_identifier           = "rds-ca-2019"
  cluster_identifier           = "docdb"
  engine                       = "docdb"
  identifier                   = "docdb"
  instance_class               = "db.r5.large"
  preferred_maintenance_window = "tue:03:06-tue:03:36"
  promotion_tier               = 1
}

resource "aws_docdb_cluster_parameter_group" "ac--prod-docdb-parameter-group" {
  description = "Cluster Parameter Group for production MongoDB"
  family      = "docdb4.0"
  name        = "prod-docdb-parameter-group"

  parameter {
    apply_method = "pending-reboot"
    name         = "tls"
    value        = "disabled"
  }
}

resource "aws_docdb_subnet_group" "ac--main-vpc-db-subnets" {
  description = "Private subnets for DBs"
  name        = "main-vpc-db-subnets"
  subnet_ids  = ["subnet-0f597fdaea877e775", "subnet-0fc2fa7eea70faa76"]
}
