resource "aws_flow_log" "ac--fl-043c52ded784d320c" {
  iam_role_arn             = var.aws_flow_log_iam_role_arn
  log_destination_type     = var.aws_flow_log_log_destination_type
  log_format               = var.aws_flow_log_log_format
  max_aggregation_interval = var.aws_flow_log_max_aggregation_interval
  tags                     = var.aws_flow_log_tags
  traffic_type             = var.aws_flow_log_traffic_type
  vpc_id                   = var.aws_flow_log_vpc_id
}
