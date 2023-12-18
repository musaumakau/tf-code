variable "aws_flow_log_iam_role_arn" {
  default = "arn:aws:iam::766176144542:role/RoleForPublishingToCloudWatchLogs"
  type    = string
}

variable "aws_flow_log_log_destination_type" {
  default = "cloud-watch-logs"
  type    = string
}

variable "aws_flow_log_log_format" {
  default = "$${version} $${account-id} $${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${log-status}"
  type    = string
}

variable "aws_flow_log_max_aggregation_interval" {
  default = 600
  type    = number
}

variable "aws_flow_log_tags" {
  default {
    Name = "main-vpc-flow-logs"
  }

  type = map(string)
}

variable "aws_flow_log_traffic_type" {
  default = "ALL"
  type    = string
}

variable "aws_flow_log_vpc_id" {
  default = "vpc-0a776fe934cdc9011"
  type    = string
}
