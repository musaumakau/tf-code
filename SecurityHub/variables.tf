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
