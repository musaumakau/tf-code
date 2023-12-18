variable "aws_cloudwatch_log_group_name" {
  default = "/aws/eks/scf-prod-EKS-cluster/cluster"
  type    = string
}

variable "aws_cloudwatch_log_group_retention_in_days" {
  default = 0
  type    = number
}

variable "aws_cloudwatch_log_group_tags" {
  default {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  type = map(string)
}
