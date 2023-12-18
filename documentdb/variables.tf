variable "aws_docdb_cluster_availability_zones" {
  default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  type    = set(string)
}

variable "aws_docdb_cluster_backup_retention_period" {
  default = 1
  type    = number
}

variable "aws_docdb_cluster_cluster_identifier" {
  default = "docdb"
  type    = string
}

variable "aws_docdb_cluster_cluster_members" {
  default = ["docdb"]
  type    = set(string)
}

variable "aws_docdb_cluster_db_cluster_parameter_group_name" {
  default = "prod-docdb-parameter-group"
  type    = string
}

variable "aws_docdb_cluster_db_subnet_group_name" {
  default = "main-vpc-db-subnets"
  type    = string
}

variable "aws_docdb_cluster_deletion_protection" {
  default = true
  type    = bool
}

variable "aws_docdb_cluster_engine" {
  default = "docdb"
  type    = string
}

variable "aws_docdb_cluster_engine_version" {
  default = "4.0.0"
  type    = string
}

variable "aws_docdb_cluster_instance_auto_minor_version_upgrade" {
  default = true
  type    = bool
}

variable "aws_docdb_cluster_instance_availability_zone" {
  default = "eu-west-2a"
  type    = string
}

variable "aws_docdb_cluster_instance_ca_cert_identifier" {
  default = "rds-ca-2019"
  type    = string
}

variable "aws_docdb_cluster_instance_cluster_identifier" {
  default = "docdb"
  type    = string
}

variable "aws_docdb_cluster_instance_engine" {
  default = "docdb"
  type    = string
}

variable "aws_docdb_cluster_instance_identifier" {
  default = "docdb"
  type    = string
}

variable "aws_docdb_cluster_instance_instance_class" {
  default = "db.r5.large"
  type    = string
}

variable "aws_docdb_cluster_instance_preferred_maintenance_window" {
  default = "tue:03:06-tue:03:36"
  type    = string
}

variable "aws_docdb_cluster_instance_promotion_tier" {
  default = 1
  type    = number
}

variable "aws_docdb_cluster_kms_key_id" {
  default = "arn:aws:kms:eu-west-2:766176144542:key/9d37b450-2749-440d-843e-c6d56bfbc5ac"
  type    = string
}

variable "aws_docdb_cluster_master_username" {
  default = "proddocdbadmin"
  type    = string
}

variable "aws_docdb_cluster_parameter_group_description" {
  default = "Cluster Parameter Group for production MongoDB"
  type    = string
}

variable "aws_docdb_cluster_parameter_group_family" {
  default = "docdb4.0"
  type    = string
}

variable "aws_docdb_cluster_parameter_group_name" {
  default = "prod-docdb-parameter-group"
  type    = string
}

variable "aws_docdb_cluster_port" {
  default = 27017
  type    = number
}

variable "aws_docdb_cluster_preferred_backup_window" {
  default = "00:00-00:30"
  type    = string
}

variable "aws_docdb_cluster_preferred_maintenance_window" {
  default = "wed:22:31-wed:23:01"
  type    = string
}

variable "aws_docdb_cluster_storage_encrypted" {
  default = true
  type    = bool
}

variable "aws_docdb_cluster_vpc_security_group_ids" {
  default = ["sg-0b894407029c80409"]
  type    = set(string)
}

variable "aws_docdb_subnet_group_description" {
  default = "Private subnets for DBs"
  type    = string
}

variable "aws_docdb_subnet_group_name" {
  default = "main-vpc-db-subnets"
  type    = string
}

variable "aws_docdb_subnet_group_subnet_ids" {
  default = ["subnet-0f597fdaea877e775", "subnet-0fc2fa7eea70faa76"]
  type    = set(string)
}
