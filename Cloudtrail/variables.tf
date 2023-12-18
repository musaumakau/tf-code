variable "aws_cloudtrail_cloud_watch_logs_group_arn" {
  default = "arn:aws:logs:eu-west-2:766176144542:log-group:/aws/cloudtrail/qradar:*"
  type    = string
}

variable "aws_cloudtrail_cloud_watch_logs_role_arn" {
  default = "arn:aws:iam::766176144542:role/service-role/CloudTrailRoleForCloudWatchLogs_aws_solv_kenya_aujas_cloudtrail"
  type    = string
}

variable "aws_cloudtrail_enable_log_file_validation" {
  default = true
  type    = bool
}

variable "aws_cloudtrail_enable_logging" {
  default = true
  type    = bool
}

variable "aws_cloudtrail_include_global_service_events" {
  default = true
  type    = bool
}

variable "aws_cloudtrail_is_multi_region_trail" {
  default = true
  type    = bool
}

variable "aws_cloudtrail_is_organization_trail" {
  default = false
  type    = bool
}

variable "aws_cloudtrail_kms_key_id" {
  default = "arn:aws:kms:ap-southeast-1:766176144542:key/3e97ea3a-0031-49a1-8224-4a6f1a2f698a"
  type    = string
}

variable "aws_cloudtrail_name" {
  default = "aws_solv_kenya_aujas_cloudtrail"
  type    = string
}

variable "aws_cloudtrail_s3_bucket_name" {
  default = "aws-solv-kenya-aujas-cloudtrail"
  type    = string
}
