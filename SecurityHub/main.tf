resource "aws_securityhub_account" "ac--766176144542" {
  auto_enable_controls      = var.aws_securityhub_account_auto_enable_controls
  control_finding_generator = var.aws_securityhub_account_control_finding_generator
  enable_default_standards  = var.aws_securityhub_account_enable_default_standards
}
