resource "aws_flow_log" "ac--fl-043c52ded784d320c" {
  iam_role_arn             = "arn:aws:iam::766176144542:role/RoleForPublishingToCloudWatchLogs"
  log_destination_type     = "cloud-watch-logs"
  log_format               = "$${version} $${account-id} $${interface-id} $${srcaddr} $${dstaddr} $${srcport} $${dstport} $${protocol} $${packets} $${bytes} $${start} $${end} $${action} $${log-status}"
  max_aggregation_interval = 600

  tags = {
    Name = "main-vpc-flow-logs"
  }

  traffic_type = "ALL"
  vpc_id       = "vpc-0a776fe934cdc9011"
}
