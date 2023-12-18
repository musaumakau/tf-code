variable "aws_db_cluster_snapshot_db_cluster_identifier" {
  default = "prod-mysqldb-aurora"
  type    = string
}

variable "aws_db_cluster_snapshot_db_cluster_snapshot_identifier" {
  default = "prod-mysqldb-aurora-final-snapshot"
  type    = string
}

variable "aws_db_option_group_engine_name" {
  default = "aurora-mysql"
  type    = string
}

variable "aws_db_option_group_major_engine_version" {
  default = "8.0"
  type    = string
}

variable "aws_db_option_group_name" {
  default = "default:aurora-mysql-8-0"
  type    = string
}

variable "aws_db_option_group_option_group_description" {
  default = "Default option group for aurora-mysql 8.0"
  type    = string
}

variable "aws_rds_cluster_allocated_storage" {
  default = 1
  type    = number
}

variable "aws_rds_cluster_availability_zones" {
  default = ["eu-west-2a", "eu-west-2b", "eu-west-2c"]
  type    = set(string)
}

variable "aws_rds_cluster_backtrack_window" {
  default = 0
  type    = number
}

variable "aws_rds_cluster_backup_retention_period" {
  default = 7
  type    = number
}

variable "aws_rds_cluster_cluster_identifier" {
  default = "mysql-aurora-cluster"
  type    = string
}

variable "aws_rds_cluster_cluster_members" {
  default = ["mysql-aurora-cluster"]
  type    = set(string)
}

variable "aws_rds_cluster_copy_tags_to_snapshot" {
  default = true
  type    = bool
}

variable "aws_rds_cluster_db_cluster_parameter_group_name" {
  default = "custom-aurora-mysql8-parameter-group"
  type    = string
}

variable "aws_rds_cluster_db_subnet_group_name" {
  default = "main-vpc-db-subnets"
  type    = string
}

variable "aws_rds_cluster_deletion_protection" {
  default = true
  type    = bool
}

variable "aws_rds_cluster_enable_http_endpoint" {
  default = false
  type    = bool
}

variable "aws_rds_cluster_enabled_cloudwatch_logs_exports" {
  default = ["audit", "error", "general", "slowquery"]
  type    = set(string)
}

variable "aws_rds_cluster_engine" {
  default = "aurora-mysql"
  type    = string
}

variable "aws_rds_cluster_engine_mode" {
  default = "provisioned"
  type    = string
}

variable "aws_rds_cluster_engine_version" {
  default = "8.0.mysql_aurora.3.02.2"
  type    = string
}

variable "aws_rds_cluster_iam_database_authentication_enabled" {
  default = false
  type    = bool
}

variable "aws_rds_cluster_iops" {
  default = 0
  type    = number
}

variable "aws_rds_cluster_kms_key_id" {
  default = "arn:aws:kms:eu-west-2:766176144542:key/9d37b450-2749-440d-843e-c6d56bfbc5ac"
  type    = string
}

variable "aws_rds_cluster_master_username" {
  default = "prodmysqladmin"
  type    = string
}

variable "aws_rds_cluster_network_type" {
  default = "IPV4"
  type    = string
}

variable "aws_rds_cluster_port" {
  default = 3306
  type    = number
}

variable "aws_rds_cluster_preferred_backup_window" {
  default = "01:31-02:01"
  type    = string
}

variable "aws_rds_cluster_preferred_maintenance_window" {
  default = "mon:03:58-mon:04:28"
  type    = string
}

variable "aws_rds_cluster_storage_encrypted" {
  default = true
  type    = bool
}

variable "aws_rds_cluster_vpc_security_group_ids" {
  default = ["sg-0f5a4f623d1148cb8"]
  type    = set(string)
}
