variable "aws_guardduty_detector_enable" {
  default = true
  type    = bool
}

variable "aws_guardduty_detector_finding_publishing_frequency" {
  default = "SIX_HOURS"
  type    = string
}
