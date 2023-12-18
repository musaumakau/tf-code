resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-apigateway-002F-welcome" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-cloudtrail-002F-qradar" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-cognito-002F-userpools-002F-eu-west-2_KqPCe7suN-002F-solv-connect-email-mobile-login-pool-kenya" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-datasync" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-eks-002F-scf-prod-EKS-cluster-002F-cluster" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-auto-start-stop-services" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-baseline-overrides-bcd8-gj7vw" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
  tags              = var.aws_cloudwatch_log_group_tags
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-cognito-migration" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-create-customauth-challenge-prod-primer-7RDMbZWnyQCe" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-define-custom-lambda-function-prod-primer-k6wo2wf6BORP" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-delete-name-tags-eu-west-2-bcd8-gj7vw" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
  tags              = var.aws_cloudwatch_log_group_tags
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-disable-inactive-iam-users" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-presign-lambdafunction-prod-primer-bYLh5pvHFzb9" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-replicabyte" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-sftp-create" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-sftp-delete" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-verify-custom-lambda-function-prod-primer-3e490yYdFEo8" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-msk" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-mysql-aurora-cluster-002F-error" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-mysql-aurora-cluster-002F-slowquery" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-postgresql-aurora-cluster-002F-postgresql" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-mysqldb-aurora-002F-error" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-mysqldb-aurora-002F-slowquery" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-postgresqldb-aurora-002F-postgresql" {
  name              = var.aws_cloudwatch_log_group_name
  retention_in_days = var.aws_cloudwatch_log_group_retention_in_days
}
