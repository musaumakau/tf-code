resource "aws_ssm_document" "ac--AWSQuickSetup-AddOrRemoveTag-PatchPolicy-gj7vw" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
  target_type     = var.aws_ssm_document_target_type
}

resource "aws_ssm_document" "ac--AWSQuickSetup-CreateAndAttachIAMToEc2Node-gj7vw" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
  target_type     = var.aws_ssm_document_target_type
}

resource "aws_ssm_document" "ac--AWSQuickSetup-CreateAndAttachIAMToHybridNode-gj7vw" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
  target_type     = var.aws_ssm_document_target_type
}

resource "aws_ssm_document" "ac--AWSQuickSetup-CreateAndAttachIAMToInstance-tjdfj" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
  target_type     = var.aws_ssm_document_target_type
}

resource "aws_ssm_document" "ac--AWSQuickSetup-NameTagRemediation-gj7vw" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
}

resource "aws_ssm_document" "ac--AWSQuickSetup-UpdateExistingInstanceProfile-tjdfj" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
  target_type     = var.aws_ssm_document_target_type
}

resource "aws_ssm_document" "ac--QuickSetup-Remediation-AutomationDocument-gj7vw" {
  content         = var.aws_ssm_document_content
  document_format = var.aws_ssm_document_document_format
  document_type   = var.aws_ssm_document_document_type
  name            = var.aws_ssm_document_name
  tags            = var.aws_ssm_document_tags
}
