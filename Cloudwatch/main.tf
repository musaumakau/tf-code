resource "aws_cloudtrail" "ac--aws_solv_kenya_aujas_cloudtrail" {
  advanced_event_selector {
    field_selector {
      equals = ["AWS::Cognito::IdentityPool"]
      field  = "resources.type"
    }

    field_selector {
      equals = ["Data"]
      field  = "eventCategory"
    }

    name = "cognito"
  }

  advanced_event_selector {
    field_selector {
      equals = ["Management"]
      field  = "eventCategory"
    }

    name = "Management events selector"
  }

  cloud_watch_logs_group_arn    = "arn:aws:logs:eu-west-2:766176144542:log-group:/aws/cloudtrail/qradar:*"
  cloud_watch_logs_role_arn     = "arn:aws:iam::766176144542:role/service-role/CloudTrailRoleForCloudWatchLogs_aws_solv_kenya_aujas_cloudtrail"
  enable_log_file_validation    = true
  enable_logging                = true
  include_global_service_events = true
  is_multi_region_trail         = true
  is_organization_trail         = false
  kms_key_id                    = "arn:aws:kms:ap-southeast-1:766176144542:key/3e97ea3a-0031-49a1-8224-4a6f1a2f698a"
  name                          = "aws_solv_kenya_aujas_cloudtrail"
  s3_bucket_name                = "aws-solv-kenya-aujas-cloudtrail"
}

resource "aws_cloudwatch_event_rule" "ac--AuditManagerSecurityHubFindingsReceiver" {
  description    = "This rule is used to route Security Hub findings to Audit Manager."
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"Security Hub Findings - Imported\"],\"source\":[\"aws.securityhub\"]}"
  is_enabled     = true
  name           = "AuditManagerSecurityHubFindingsReceiver"
}

resource "aws_cloudwatch_event_rule" "ac--AutoScalingManagedRule" {
  description    = "This rule is used to route Instance notifications to EC2 Auto Scaling"
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"EC2 Instance Rebalance Recommendation\",\"EC2 Spot Instance Interruption Warning\"],\"source\":[\"aws.ec2\"]}"
  is_enabled     = true
  name           = "AutoScalingManagedRule"
}

resource "aws_cloudwatch_event_rule" "ac--DO-NOT-DELETE-AmazonInspectorEc2ManagedRule" {
  description    = "Managed rule used to route EC2 Events to Inspector"
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"EC2 Instance State-change Notification\"],\"source\":[\"aws.ec2\"]}"
  is_enabled     = true
  name           = "DO-NOT-DELETE-AmazonInspectorEc2ManagedRule"
}

resource "aws_cloudwatch_event_rule" "ac--DO-NOT-DELETE-AmazonInspectorEc2TagManagedRule" {
  description    = "Managed rule used to route EC2 Tag Change Events to Inspector"
  event_bus_name = "default"
  event_pattern  = "{\"detail\":{\"resource-type\":[\"instance\"],\"service\":[\"ec2\"]},\"detail-type\":[\"Tag Change on Resource\"],\"source\":[\"aws.tag\"]}"
  is_enabled     = true
  name           = "DO-NOT-DELETE-AmazonInspectorEc2TagManagedRule"
}

resource "aws_cloudwatch_event_rule" "ac--DO-NOT-DELETE-AmazonInspectorEcrManagedRule" {
  description    = "Managed rule used to route ECR Events to Inspector"
  event_bus_name = "default"
  event_pattern  = "{\"detail-type\":[\"ECR Image Action\",\"ECR Scan Resource Change\"],\"source\":[\"aws.ecr\"]}"
  is_enabled     = true
  name           = "DO-NOT-DELETE-AmazonInspectorEcrManagedRule"
}

resource "aws_cloudwatch_event_rule" "ac--DevOpsGuruManagedRuleForCodeGuruProfiler-DO_NOT_DELETE" {
  description    = "This rule is used to route aws.codeguru-profiler Events to DevOps-Guru"
  event_bus_name = "default"
  event_pattern  = "{\"account\":[\"766176144542\"],\"detail-type\":[\"CodeGuru Profiler Recommendations State Change\"],\"region\":[\"eu-west-2\"],\"source\":[\"aws.codeguru-profiler\"]}"
  is_enabled     = true
  name           = "DevOpsGuruManagedRuleForCodeGuruProfiler-DO_NOT_DELETE"
}

resource "aws_cloudwatch_event_rule" "ac--SecurityEventBus-AllEvents-DO-NOT-DELETE" {
  description    = "Rule to send all events to the Security Event Bus"
  event_bus_name = "default"
  event_pattern  = "{\"account\":[\"766176144542\"]}"
  is_enabled     = true
  name           = "SecurityEventBus-AllEvents-DO-NOT-DELETE"
}

resource "aws_cloudwatch_event_rule" "ac--deactivate-inactive-iam-users" {
  event_bus_name      = "default"
  is_enabled          = true
  name                = "deactivate-inactive-iam-users"
  schedule_expression = "rate(1 hour)"

  tags = {
    owner = "devops"
  }
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-AuditManagerSecurityHubFindingsReceiver-002F-AuditManagerTarget" {
  arn            = "arn:aws:auditmanager:eu-west-2:::"
  event_bus_name = "default"
  rule           = "AuditManagerSecurityHubFindingsReceiver"
  target_id      = "AuditManagerTarget"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-AutoScalingManagedRule-002F-autoscaling" {
  arn            = "arn:aws:autoscaling:eu-west-2:::"
  event_bus_name = "default"
  rule           = "AutoScalingManagedRule"
  target_id      = "autoscaling"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-DO-NOT-DELETE-AmazonInspectorEc2ManagedRule-002F-InspectorTarget" {
  arn            = "arn:aws:inspector2:eu-west-2:::"
  event_bus_name = "default"
  rule           = "DO-NOT-DELETE-AmazonInspectorEc2ManagedRule"
  target_id      = "InspectorTarget"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-DO-NOT-DELETE-AmazonInspectorEc2TagManagedRule-002F-InspectorTarget" {
  arn            = "arn:aws:inspector2:eu-west-2:::"
  event_bus_name = "default"
  rule           = "DO-NOT-DELETE-AmazonInspectorEc2TagManagedRule"
  target_id      = "InspectorTarget"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-DO-NOT-DELETE-AmazonInspectorEcrManagedRule-002F-InspectorTarget" {
  arn            = "arn:aws:inspector2:eu-west-2:::"
  event_bus_name = "default"
  rule           = "DO-NOT-DELETE-AmazonInspectorEcrManagedRule"
  target_id      = "InspectorTarget"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-DevOpsGuruManagedRuleForCodeGuruProfiler-DO_NOT_DELETE-002F-DevOps-Guru" {
  arn            = "arn:aws:devops-guru-prod-1:eu-west-2:::"
  event_bus_name = "default"
  rule           = "DevOpsGuruManagedRuleForCodeGuruProfiler-DO_NOT_DELETE"
  target_id      = "DevOps-Guru"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-SecurityEventBus-AllEvents-DO-NOT-DELETE-002F-SecurityEventBus" {
  arn            = "arn:aws:events:eu-west-2:483059423106:event-bus/SecurityEventBus-DO-NOT-DELETE"
  event_bus_name = "default"
  role_arn       = "arn:aws:iam::766176144542:role/SecurityRole-PublishEventToSecurityAccount"
  rule           = "SecurityEventBus-AllEvents-DO-NOT-DELETE"
  target_id      = "SecurityEventBus"
}

resource "aws_cloudwatch_event_target" "ac--eu-west-2-default-002F-deactivate-inactive-iam-users-002F-Id9086de7d-0761-4ecd-8ff6-a3d39b21a02b" {
  arn            = "arn:aws:lambda:eu-west-2:766176144542:function:disable-inactive-iam-users"
  event_bus_name = "default"
  input          = "{\n}"
  rule           = "deactivate-inactive-iam-users"
  target_id      = "Id9086de7d-0761-4ecd-8ff6-a3d39b21a02b"
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-apigateway-002F-welcome" {
  name              = "/aws/apigateway/welcome"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-cloudtrail-002F-qradar" {
  name              = "/aws/cloudtrail/qradar"
  retention_in_days = 1
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-cognito-002F-userpools-002F-eu-west-2_KqPCe7suN-002F-solv-connect-email-mobile-login-pool-kenya" {
  name              = "/aws/cognito/userpools/eu-west-2_KqPCe7suN/solv-connect-email-mobile-login-pool-kenya"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-datasync" {
  name              = "/aws/datasync"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-eks-002F-scf-prod-EKS-cluster-002F-cluster" {
  name              = "/aws/eks/scf-prod-EKS-cluster/cluster"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr" {
  name              = "/aws/lambda/KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-auto-start-stop-services" {
  name              = "/aws/lambda/auto-start-stop-services"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-baseline-overrides-bcd8-gj7vw" {
  name              = "/aws/lambda/baseline-overrides-bcd8-gj7vw"
  retention_in_days = 3653

  tags = {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-cognito-migration" {
  name              = "/aws/lambda/cognito-migration"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-create-customauth-challenge-prod-primer-7RDMbZWnyQCe" {
  name              = "/aws/lambda/create-customauth-challenge-prod-primer-7RDMbZWnyQCe"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-define-custom-lambda-function-prod-primer-k6wo2wf6BORP" {
  name              = "/aws/lambda/define-custom-lambda-function-prod-primer-k6wo2wf6BORP"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-delete-name-tags-eu-west-2-bcd8-gj7vw" {
  name              = "/aws/lambda/delete-name-tags-eu-west-2-bcd8-gj7vw"
  retention_in_days = 3653

  tags = {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-disable-inactive-iam-users" {
  name              = "/aws/lambda/disable-inactive-iam-users"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-presign-lambdafunction-prod-primer-bYLh5pvHFzb9" {
  name              = "/aws/lambda/presign-lambdafunction-prod-primer-bYLh5pvHFzb9"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-replicabyte" {
  name              = "/aws/lambda/replicabyte"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-sftp-create" {
  name              = "/aws/lambda/sftp-create"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-sftp-delete" {
  name              = "/aws/lambda/sftp-delete"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-lambda-002F-verify-custom-lambda-function-prod-primer-3e490yYdFEo8" {
  name              = "/aws/lambda/verify-custom-lambda-function-prod-primer-3e490yYdFEo8"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-msk" {
  name              = "/aws/msk"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-mysql-aurora-cluster-002F-error" {
  name              = "/aws/rds/cluster/mysql-aurora-cluster/error"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-mysql-aurora-cluster-002F-slowquery" {
  name              = "/aws/rds/cluster/mysql-aurora-cluster/slowquery"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-postgresql-aurora-cluster-002F-postgresql" {
  name              = "/aws/rds/cluster/postgresql-aurora-cluster/postgresql"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-mysqldb-aurora-002F-error" {
  name              = "/aws/rds/cluster/prod-mysqldb-aurora/error"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-mysqldb-aurora-002F-slowquery" {
  name              = "/aws/rds/cluster/prod-mysqldb-aurora/slowquery"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-rds-002F-cluster-002F-prod-postgresqldb-aurora-002F-postgresql" {
  name              = "/aws/rds/cluster/prod-postgresqldb-aurora/postgresql"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-aws-002F-transfer-002F-s-42375f9ad9954f16a" {
  name              = "/aws/transfer/s-42375f9ad9954f16a"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac---002F-scf-craftsilicon-VPN" {
  name              = "/scf-craftsilicon-VPN"
  retention_in_days = 14
}

resource "aws_cloudwatch_log_group" "ac--RDSOSMetrics" {
  name              = "RDSOSMetrics"
  retention_in_days = 30
}

resource "aws_cloudwatch_log_group" "ac--aws-waf-logs-lg" {
  name              = "aws-waf-logs-lg"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_group" "ac--prod-kenya-vpc-flow-logs" {
  name              = "prod-kenya-vpc-flow-logs"
  retention_in_days = 0
}

resource "aws_cloudwatch_log_metric_filter" "ac--AWS-Config-configuration-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "AWS-Config-configuration-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "AWS-Config-configuration-changes"
  pattern = "{($.eventSource=config.amazonaws.com) \u0026\u0026 (($.eventName=StopConfigurationRecorder) || ($.eventName=DeleteDeliveryChannel) || ($.eventName=PutDeliveryChannel) || ($.eventName=PutConfigurationRecorder))}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--CloudTrail-configuration-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "CloudTrail-configuration-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "CloudTrail-configuration-changes"
  pattern = "{($.eventName=CreateTrail) || ($.eventName=UpdateTrail) || ($.eventName=DeleteTrail) || ($.eventName=StartLogging) || ($.eventName=StopLogging)}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--IAM-policy-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "IAM-policy-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "IAM-policy-changes"
  pattern = "{($.eventSource=iam.amazonaws.com) \u0026\u0026 (($.eventName=DeleteGroupPolicy) || ($.eventName=DeleteRolePolicy) || ($.eventName=DeleteUserPolicy) || ($.eventName=PutGroupPolicy) || ($.eventName=PutRolePolicy) || ($.eventName=PutUserPolicy) || ($.eventName=CreatePolicy) || ($.eventName=DeletePolicy) || ($.eventName=CreatePolicyVersion) || ($.eventName=DeletePolicyVersion) || ($.eventName=AttachRolePolicy) || ($.eventName=DetachRolePolicy) || ($.eventName=AttachUserPolicy) || ($.eventName=DetachUserPolicy) || ($.eventName=AttachGroupPolicy) || ($.eventName=DetachGroupPolicy))}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--Management-Console-authentication-failures-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "Management-Console-authentication-failures"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "Management-Console-authentication-failures"
  pattern = "{($.eventName=ConsoleLogin) \u0026\u0026 ($.errorMessage=\"Failed authentication\")}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--RootAccountUsageFilter" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "RootAccountUsageMetric"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "RootAccountUsageFilter"
  pattern = "{$.userIdentity.type=\"Root\" \u0026\u0026 $.userIdentity.invokedBy NOT EXISTS \u0026\u0026 $.eventType !=\"AwsServiceEvent\"}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--S3-bucket-policy-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "S3-bucket-policy-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "S3-bucket-policy-changes"
  pattern = "{($.eventSource=s3.amazonaws.com) \u0026\u0026 (($.eventName=PutBucketAcl) || ($.eventName=PutBucketPolicy) || ($.eventName=PutBucketCors) || ($.eventName=PutBucketLifecycle) || ($.eventName=PutBucketReplication) || ($.eventName=DeleteBucketPolicy) || ($.eventName=DeleteBucketCors) || ($.eventName=DeleteBucketLifecycle) || ($.eventName=DeleteBucketReplication))}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--VPC-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "VPC-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "VPC-changes"
  pattern = "{($.eventName=CreateVpc) || ($.eventName=DeleteVpc) || ($.eventName=ModifyVpcAttribute) || ($.eventName=AcceptVpcPeeringConnection) || ($.eventName=CreateVpcPeeringConnection) || ($.eventName=DeleteVpcPeeringConnection) || ($.eventName=RejectVpcPeeringConnection) || ($.eventName=AttachClassicLinkVpc) || ($.eventName=DetachClassicLinkVpc) || ($.eventName=DisableVpcClassicLink) || ($.eventName=EnableVpcClassicLink)}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--changes-to-network-gateways-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "changes-to-network-gateways"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "changes-to-network-gateways"
  pattern = "{($.eventName=CreateCustomerGateway) || ($.eventName=DeleteCustomerGateway) || ($.eventName=AttachInternetGateway) || ($.eventName=CreateInternetGateway) || ($.eventName=DeleteInternetGateway) || ($.eventName=DetachInternetGateway)}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--disabling-or-scheduled-deletion-of-customer-created-CMKs-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "disabling-or-scheduled-deletion-of-customer-created-CMKs"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "disabling-or-scheduled-deletion-of-customer-created-CMKs"
  pattern = "{($.eventSource=kms.amazonaws.com) \u0026\u0026 (($.eventName=DisableKey) || ($.eventName=ScheduleKeyDeletion))}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--nacl-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "nacl-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "nacl-changes"
  pattern = "{($.eventName=CreateNetworkAcl) || ($.eventName=CreateNetworkAclEntry) || ($.eventName=DeleteNetworkAcl) || ($.eventName=DeleteNetworkAclEntry) || ($.eventName=ReplaceNetworkAclEntry) || ($.eventName=ReplaceNetworkAclAssociation)}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--route-table-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "route-table-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "route-table-changes"
  pattern = "{($.eventSource=ec2.amazonaws.com) \u0026\u0026 (($.eventName=CreateRoute) || ($.eventName=CreateRouteTable) || ($.eventName=ReplaceRoute) || ($.eventName=ReplaceRouteTableAssociation) || ($.eventName=DeleteRouteTable) || ($.eventName=DeleteRoute) || ($.eventName=DisassociateRouteTable))}"
}

resource "aws_cloudwatch_log_metric_filter" "ac--security-group-changes-1" {
  log_group_name = aws_cloudwatch_log_group.ac---002F-aws-002F-cloudtrail-002F-qradar.name

  metric_transformation {
    default_value = "0"
    name          = "security-group-changes"
    namespace     = "LogMetrics"
    value         = "1"
  }

  name    = "security-group-changes"
  pattern = "{($.eventName=AuthorizeSecurityGroupIngress) || ($.eventName=AuthorizeSecurityGroupEgress) || ($.eventName=RevokeSecurityGroupIngress) || ($.eventName=RevokeSecurityGroupEgress) || ($.eventName=CreateSecurityGroup) || ($.eventName=DeleteSecurityGroup)}"
}

resource "aws_cloudwatch_metric_alarm" "ac--API-0020-Gateway-0020-5XX-0020-Errors" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:Default_CloudWatch_Alarms_Topic"]
  alarm_name          = "API Gateway 5XX Errors"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1

  dimensions = {
    ApiName = "prod-kenya-auth"
  }

  evaluation_periods = 1
  metric_name        = "5XXError"
  namespace          = "AWS/ApiGateway"
  period             = 300
  statistic          = "Sum"
  threshold          = 20
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--AWS-Config-configuration-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "AWS-Config-configuration-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "AWS-Config-configuration-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--CloudTrail-configuration-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "CloudTrail-configuration-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "CloudTrail-configuration-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--High-0020-CPU-0020-Utilization--0020-MySQL" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:FreshserviceAlerts"]
  alarm_name          = "High CPU Utilization- MySQL"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 3

  dimensions = {
    EngineName = "aurora-mysql"
  }

  evaluation_periods = 10
  metric_name        = "CPUUtilization"
  namespace          = "AWS/RDS"
  period             = 60
  statistic          = "Average"
  threshold          = 80
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--High-0020-Disk-0020-Utilization-Broker-0020-1" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:FreshserviceAlerts"]
  alarm_name          = "High Disk Utilization-Broker 1"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1

  dimensions = {
    "Broker ID"    = "1"
    "Cluster Name" = "kafka-cluster"
  }

  evaluation_periods = 1
  metric_name        = "KafkaDataLogsDiskUsed"
  namespace          = "AWS/Kafka"
  period             = 300
  statistic          = "Average"
  threshold          = 75
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--IAM-policy-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "IAM-policy-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "IAM-policy-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--Kafka-0020-High-0020-Disk-0020-Utilization-0020---0020-Broker-0020-2" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:FreshserviceAlerts"]
  alarm_name          = "Kafka High Disk Utilization - Broker 2"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1

  dimensions = {
    "Broker ID"    = "2"
    "Cluster Name" = "kafka-cluster"
  }

  evaluation_periods = 1
  metric_name        = "KafkaDataLogsDiskUsed"
  namespace          = "AWS/Kafka"
  period             = 300
  statistic          = "Average"
  threshold          = 75
  treat_missing_data = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--Management-Console-authentication-failures" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "Management-Console-authentication-failures"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "Management-Console-authentication-failures"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--RootAccountUsage" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "RootAccountUsage"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "RootAccountUsageMetric"
  namespace           = "LogMetrics"
  period              = 60
  statistic           = "Sum"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--S3-bucket-policy-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "S3-bucket-policy-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "S3-bucket-policy-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--VPC-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "VPC-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "VPC-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--changes-to-network-gateways" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "changes-to-network-gateways"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "changes-to-network-gateways"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--disabling-or-scheduled-deletion-of-customer-created-CMKs" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "disabling-or-scheduled-deletion-of-customer-created-CMKs"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "disabling-or-scheduled-deletion-of-customer-created-CMKs"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--nacl-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "nacl-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "nacl-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 0
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--route-table-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "route-table-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "route-table-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 1
  treat_missing_data  = "missing"
}

resource "aws_cloudwatch_metric_alarm" "ac--security-group-changes" {
  actions_enabled     = true
  alarm_actions       = ["arn:aws:sns:eu-west-2:766176144542:CISAlarms"]
  alarm_name          = "security-group-changes"
  comparison_operator = "GreaterThanThreshold"
  datapoints_to_alarm = 1
  evaluation_periods  = 1
  metric_name         = "security-group-changes"
  namespace           = "LogMetrics"
  period              = 300
  statistic           = "Average"
  threshold           = 0
  treat_missing_data  = "missing"
}
