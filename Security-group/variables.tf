variable "aws_security_group_description" {
  default = "Allow connection to metabase server"
  type    = string
}

variable "aws_security_group_name" {
  default = "metabase-server-sg"
  type    = string
}

variable "aws_security_group_tags" {
  default {
    Name                                = "eks-cluster-sg-eks-cluster-365256518"
    "kubernetes.io/cluster/eks-cluster" = "owned"
  }

  type = map(string)
}

variable "aws_security_group_vpc_id" {
  default = "vpc-0a776fe934cdc9011"
  type    = string
}

variable "aws_securityhub_account_auto_enable_controls" {
  default = true
  type    = bool
}

variable "aws_securityhub_account_control_finding_generator" {
  default = "STANDARD_CONTROL"
  type    = string
}

variable "aws_securityhub_account_enable_default_standards" {
  default = false
  type    = bool
}
