resource "aws_config_config_rule" "ac--securityhub-access-keys-rotated-7ea17b60" {
  description                 = "Checks whether the active access keys are rotated within the number of days specified in maxAccessKeyAge"
  input_parameters            = "{\"maxAccessKeyAge\":\"90\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-access-keys-rotated-7ea17b60"

  source {
    owner                 = "AWS"
    source_identifier     = "ACCESS_KEYS_ROTATED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-acm-certificate-expiration-check-de84c35c" {
  description                 = "Imported ACM certificates should be renewed within the number of days specified."
  input_parameters            = "{\"daysToExpiration\":\"30\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-acm-certificate-expiration-check-de84c35c"

  scope {
    compliance_resource_types = ["AWS::ACM::Certificate"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-acm-certificate-rsa-check-7d7e574f" {
  description      = "Checks if RSA certificates managed by AWS Certificate Manager (ACM) have a key length of at least '2048' bits. The rule is NON_COMPLIANT if the minimum key length is less than 2048 bits."
  input_parameters = "{}"
  name             = "securityhub-acm-certificate-rsa-check-7d7e574f"

  scope {
    compliance_resource_types = ["AWS::ACM::Certificate"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ACM_CERTIFICATE_RSA_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-desync-mode-check-76f60f1c" {
  description      = "This control checks whether the Application Load Balancer is configured defensive or strictest de-sync mitigation mode. This control fails if the Application Load Balancer is not configured with defensive or strictest desync mitigation mode."
  input_parameters = "{\"desyncMode\":\"defensive,strictest\"}"
  name             = "securityhub-alb-desync-mode-check-76f60f1c"

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_DESYNC_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-http-drop-invalid-header-enabled-6514befb" {
  description      = "Checks if rule evaluates Application Load Balancers (ALBs) to ensure they are configured to drop http headers. The rule is NON_COMPLIANT if the value of routing.http.drop_invalid_header_fields.enabled is set to false."
  input_parameters = "{}"
  name             = "securityhub-alb-http-drop-invalid-header-enabled-6514befb"

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_HTTP_DROP_INVALID_HEADER_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-http-to-https-redirection-check-fb87934f" {
  description                 = "Checks whether HTTP to HTTPS redirection is configured on all HTTP listeners of Application Load Balancers. The rule is NON_COMPLIANT if one or more HTTP listeners of Application Load Balancers do not have HTTP to HTTPS redirection configured."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-alb-http-to-https-redirection-check-fb87934f"

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-associated-with-waf-376d2745" {
  description      = "This control checks to see if an API Gateway stage is using an AWS WAF Web ACL. This control fails if an AWS WAF Web ACL is not attached to a REST API Gateway stage."
  input_parameters = "{}"
  name             = "securityhub-api-gw-associated-with-waf-376d2745"

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_ASSOCIATED_WITH_WAF"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-cache-encrypted-45ad2baa" {
  description      = "This control checks whether all methods in Amazon API Gateway REST API stages that have cache enabled are encrypted. The control fails if any method in API Gateway REST API stage is configured to cache and the cache is not encrypted."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-api-gw-cache-encrypted-45ad2baa"

  scope {
    compliance_resource_types = ["AWS::ApiGateway::Stage"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-execution-logging-enabled-8200b0ce" {
  description      = "Checks that all stages in Amazon API Gateway REST and WebSocket APIs have logging enabled. The rule is NON_COMPLIANT if logging is not enabled. The rule is NON_COMPLIANT if loggingLevel is neither ERROR nor INFO."
  input_parameters = "{}"
  name             = "securityhub-api-gw-execution-logging-enabled-8200b0ce"

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_EXECUTION_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-ssl-enabled-4688793a" {
  description      = "Checks if a REST API stage uses an Secure Sockets Layer (SSL) certificate. This rule is NON_COMPLIANT if the REST API stage does not have an associated SSL certificate."
  input_parameters = "{}"
  name             = "securityhub-api-gw-ssl-enabled-4688793a"

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_SSL_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gwv2-access-logs-enabled-9f113dfd" {
  description      = "Checks if Amazon API Gateway V2 stages have access logging enabled.The rule is NON_COMPLIANT if 'accessLogSettings' is not present in Stage configuration."
  input_parameters = "{}"
  name             = "securityhub-api-gwv2-access-logs-enabled-9f113dfd"

  source {
    owner                 = "AWS"
    source_identifier     = "API_GWV2_ACCESS_LOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gwv2-authorization-type-configured-b858971a" {
  description                 = "Checks if Amazon API Gatewayv2 API routes have an authorization type set. This rule is NON_COMPLIANT if the authorization type is NONE."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-api-gwv2-authorization-type-configured-b858971a"

  source {
    owner                 = "AWS"
    source_identifier     = "API_GWV2_AUTHORIZATION_TYPE_CONFIGURED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-appsync-authorization-check-42c485d1" {
  description      = "Checks if an AWS AppSync API is using allowed authorization mechanisms. The rule is NON_COMPLIANT if an unapproved authorization mechanism is being used."
  input_parameters = "{\"AllowedAuthorizationTypes\":\"AWS_LAMBDA,AWS_IAM,OPENID_CONNECT,AMAZON_COGNITO_USER_POOLS\"}"
  name             = "securityhub-appsync-authorization-check-42c485d1"

  scope {
    compliance_resource_types = ["AWS::AppSync::GraphQLApi"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "APPSYNC_AUTHORIZATION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-appsync-logging-enabled-dcbf6f66" {
  description      = "Checks if an AWS AppSync API has logging enabled. The rule is NON_COMPLIANT if logging is not enabled, or 'fieldLogLevel' is neither ERROR nor ALL."
  input_parameters = "{}"
  name             = "securityhub-appsync-logging-enabled-dcbf6f66"

  scope {
    compliance_resource_types = ["AWS::AppSync::GraphQLApi"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "APPSYNC_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-athena-workgroup-encrypted-at-rest-f2a8c3e9" {
  description      = "Checks if an Amazon Athena workgroup is encrypted at rest. The rule is NON_COMPLIANT if encryption of data at rest is not enabled for an Athena workgroup."
  input_parameters = "{}"
  name             = "securityhub-athena-workgroup-encrypted-at-rest-f2a8c3e9"

  scope {
    compliance_resource_types = ["AWS::Athena::WorkGroup"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ATHENA_WORKGROUP_ENCRYPTED_AT_REST"
  }
}

resource "aws_config_config_rule" "ac--securityhub-aurora-mysql-backtracking-enabled-a484a897" {
  description      = "This control checks if Amazon Aurora clusters have backtracking enabled."
  input_parameters = "{}"
  name             = "securityhub-aurora-mysql-backtracking-enabled-a484a897"

  source {
    owner                 = "AWS"
    source_identifier     = "AURORA_MYSQL_BACKTRACKING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-group-elb-healthcheck-required-d7a80594" {
  description      = "Checks whether your Auto Scaling groups that are associated with a Classic Load Balancer are using Elastic Load Balancing health checks."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-group-elb-healthcheck-required-d7a80594"

  scope {
    compliance_resource_types = ["AWS::AutoScaling::AutoScalingGroup"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_GROUP_ELB_HEALTHCHECK_REQUIRED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-config-hop-limit-f1b54941" {
  description      = "This control checks the number of network hops that the metadata token can travel. This control fails if the Metadata response hop limit is greater than one."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-config-hop-limit-f1b54941"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_CONFIG_HOP_LIMIT"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-config-public-ip-disabled-3bcfc0c6" {
  description      = "This control checks whether Amazon EC2 Auto Scaling groups have public IP addresses enabled using launch configurations."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-config-public-ip-disabled-3bcfc0c6"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-template-d9dbba41" {
  description      = "This control checks whether an Amazon EC2 Auto Scaling group is created from an EC2 launch template."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launch-template-d9dbba41"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_TEMPLATE"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launchconfig-requires-imdsv2-6594947a" {
  description      = "This control checks whether only IMDSv2 is enabled. This control fails if the Metadata version is not included in the launch configuration or if both Metadata V1 and V2 are enabled."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-launchconfig-requires-imdsv2-6594947a"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCHCONFIG_REQUIRES_IMDSV2"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-multiple-az-e8153ae7" {
  description      = "This control checks whether an Auto Scaling group spans multiple Availability Zones. The control fails if an Auto Scaling group does not span multiple availability zones."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-multiple-az-e8153ae7"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-multiple-instance-types-089908a8" {
  description      = "This control checks whether an Amazon EC2 AutoScaling group uses multiple instance types. This control fails if the Amazon EC2 AutoScaling group has only one instance type defined."
  input_parameters = "{}"
  name             = "securityhub-autoscaling-multiple-instance-types-089908a8"

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_MULTIPLE_INSTANCE_TYPES"
  }
}

resource "aws_config_config_rule" "ac--securityhub-beanstalk-enhanced-health-reporting-enabled-a24732e6" {
  description      = "Checks for Elastic Beanstalk environment is configured for 'enhanced' health reporting and NON_COMPLIANT if configured for 'basic' health reporting."
  input_parameters = "{}"
  name             = "securityhub-beanstalk-enhanced-health-reporting-enabled-a24732e6"

  source {
    owner                 = "AWS"
    source_identifier     = "BEANSTALK_ENHANCED_HEALTH_REPORTING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-clb-desync-mode-check-02e03d44" {
  description      = "This control checks if Classic Load Balancers (CLB) are configured with a user defined Desync mitigation mode. This control fails if CLB Desync mitigation mode does not match with user defined Desync mitigation mode."
  input_parameters = "{\"desyncMode\":\"defensive,strictest\"}"
  name             = "securityhub-clb-desync-mode-check-02e03d44"

  source {
    owner                 = "AWS"
    source_identifier     = "CLB_DESYNC_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-clb-multiple-az-dedde49a" {
  description      = "This control checks whether a Classic Load Balancer has been configured to span multiple Availability Zones. The control fails if the Classic Load Balancer does not span multiple availability zones."
  input_parameters = "{}"
  name             = "securityhub-clb-multiple-az-dedde49a"

  source {
    owner                 = "AWS"
    source_identifier     = "CLB_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "ac--securityhub-cloud-trail-cloud-watch-logs-enabled-c882a74d" {
  description                 = "Checks whether AWS CloudTrail trails are configured to send logs to Amazon CloudWatch logs."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-cloud-watch-logs-enabled-c882a74d"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CLOUD_TRAIL_CLOUD_WATCH_LOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-cloud-trail-encryption-enabled-07bb3ecf" {
  description                 = "Ensure CloudTrail logs are encrypted at rest using KMS CMKs"
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-encryption-enabled-07bb3ecf"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CLOUD_TRAIL_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-cloud-trail-log-file-validation-enabled-2e88fe5c" {
  description                 = "Checks whether AWS CloudTrail creates a signed digest file with logs."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cloud-trail-log-file-validation-enabled-2e88fe5c"

  scope {
    compliance_resource_types = ["AWS::CloudTrail::Trail"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CLOUD_TRAIL_LOG_FILE_VALIDATION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-cloudformation-stack-notification-check-e19bd461" {
  description      = "This control checks if your CloudFormation stacks are sending event notifications to an SNS topic."
  input_parameters = "{}"
  name             = "securityhub-cloudformation-stack-notification-check-e19bd461"

  source {
    owner                 = "AWS"
    source_identifier     = "CLOUDFORMATION_STACK_NOTIFICATION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-cmk-backing-key-rotation-enabled-a8c963d8" {
  description                 = "Checks that key rotation is enabled for customer created customer master key (CMK)"
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-cmk-backing-key-rotation-enabled-a8c963d8"

  scope {
    compliance_resource_types = ["AWS::KMS::Key"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CMK_BACKING_KEY_ROTATION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-codebuild-project-environment-privileged-check-70e9ab46" {
  description      = "This control checks if an AWS CodeBuild project environment has privileged mode enabled. The rule fails for a CodeBuild project if 'privilegedMode' is set to 'true'."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-environment-privileged-check-70e9ab46"

  source {
    owner                 = "AWS"
    source_identifier     = "CODEBUILD_PROJECT_ENVIRONMENT_PRIVILEGED_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-codebuild-project-envvar-awscred-check-de48beba" {
  description      = "Checks whether the project contains environment variables AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-envvar-awscred-check-de48beba"

  scope {
    compliance_resource_types = ["AWS::CodeBuild::Project"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CODEBUILD_PROJECT_ENVVAR_AWSCRED_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-codebuild-project-logging-enabled-4747d850" {
  description      = "This control checks whether a CodeBuild project environment has at least one log option enabled. This control fails if s3 or CloudWatch logs aren't present or in DISABLED status. The control passes if the status of either logs is ENABLED."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-logging-enabled-4747d850"

  source {
    owner                 = "AWS"
    source_identifier     = "CODEBUILD_PROJECT_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-codebuild-project-s3-logs-encrypted-98aa0747" {
  description      = "Checks if a AWS CodeBuild project configured with Amazon S3 Logs has encryption enabled for its logs. The rule is NON_COMPLIANT if `encryptionDisabled` is set to `true` in a S3LogsConfig of a CodeBuild project. "
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-s3-logs-encrypted-98aa0747"

  source {
    owner                 = "AWS"
    source_identifier     = "CODEBUILD_PROJECT_S3_LOGS_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-codebuild-project-source-repo-url-check-935cf4d5" {
  description      = "Checks whether the GitHub or Bitbucket source repository URL contains either personal access tokens or user name and password."
  input_parameters = "{}"
  name             = "securityhub-codebuild-project-source-repo-url-check-935cf4d5"

  scope {
    compliance_resource_types = ["AWS::CodeBuild::Project"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CODEBUILD_PROJECT_SOURCE_REPO_URL_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-custom-eventbus-policy-attached-1d9d4dcf" {
  description      = "Checks if Amazon EventBridge custom event buses have a resource-based policy attached. The rule is NON_COMPLIANT if a custom event bus policy does not have an attached resource-based policy."
  input_parameters = "{}"
  name             = "securityhub-custom-eventbus-policy-attached-1d9d4dcf"

  scope {
    compliance_resource_types = ["AWS::Events::EventBus"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "CUSTOM_EVENTBUS_POLICY_ATTACHED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dax-encryption-enabled-1ce9bea2" {
  description                 = "Checks that DynamoDB Accelerator (DAX) clusters are encrypted. The rule is NON_COMPLIANT if a DAX cluster is not encrypted."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dax-encryption-enabled-1ce9bea2"

  source {
    owner                 = "AWS"
    source_identifier     = "DAX_ENCRYPTION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-db-instance-backup-enabled-3f496e2d" {
  description      = "Checks whether RDS DB instances have backups enabled. Optionally, the rule checks the backup retention period and the backup window."
  input_parameters = "{\"backupRetentionMinimum\":\"7\",\"checkReadReplicas\":\"False\"}"
  name             = "securityhub-db-instance-backup-enabled-3f496e2d"

  source {
    owner                 = "AWS"
    source_identifier     = "DB_INSTANCE_BACKUP_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dms-auto-minor-version-upgrade-check-ef1b4316" {
  description      = "Checks if an AWS Database Migration Service (AWS DMS) replication instance has automatic minor version upgrades enabled. The rule is NON_COMPLIANT if an AWS DMS replication instance is not configured with automatic minor version upgrades."
  input_parameters = "{}"
  name             = "securityhub-dms-auto-minor-version-upgrade-check-ef1b4316"

  scope {
    compliance_resource_types = ["AWS::DMS::ReplicationInstance"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DMS_AUTO_MINOR_VERSION_UPGRADE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dms-endpoint-ssl-configured-6f047793" {
  description      = "Checks if AWS Database Migration Service (AWS DMS) endpoints are configured with an SSL connection. The rule is NON_COMPLIANT if AWS DMS does not have an SSL connection configured."
  input_parameters = "{}"
  name             = "securityhub-dms-endpoint-ssl-configured-6f047793"

  scope {
    compliance_resource_types = ["AWS::DMS::Endpoint"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DMS_ENDPOINT_SSL_CONFIGURED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dms-replication-not-public-36d4de17" {
  description                 = "Checks whether AWS Database Migration Service replication instances are public. The rule is NON_COMPLIANT if PubliclyAccessible field is true."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dms-replication-not-public-36d4de17"

  scope {
    compliance_resource_types = ["AWS::DMS::ReplicationInstance"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DMS_REPLICATION_NOT_PUBLIC"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dms-replication-task-sourcedb-logging-3caad229" {
  description      = "Checks if logging is enabled with a valid severity level for AWS DMS replication tasks of a source database. The rule is NON_COMPLIANT if logging is not enabled or logs for DMS replication tasks of a source database have a severity level that invalid."
  input_parameters = "{}"
  name             = "securityhub-dms-replication-task-sourcedb-logging-3caad229"

  scope {
    compliance_resource_types = ["AWS::DMS::ReplicationTask"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DMS_REPLICATION_TASK_SOURCEDB_LOGGING"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dms-replication-task-targetdb-logging-b3480939" {
  description      = "Checks if logging is enabled with a valid severity level for AWS DMS replication task events of a target database. The rule is NON_COMPLIANT if logging is not enabled or replication task logging of a target database has a severity level that is invalid."
  input_parameters = "{}"
  name             = "securityhub-dms-replication-task-targetdb-logging-b3480939"

  scope {
    compliance_resource_types = ["AWS::DMS::ReplicationTask"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DMS_REPLICATION_TASK_TARGETDB_LOGGING"
  }
}

resource "aws_config_config_rule" "ac--securityhub-docdb-cluster-audit-logging-enabled-00e627f6" {
  description      = "Checks if an Amazon DocumentDB (with MongoDB compatibility) instance cluster has CloudWatch log export enabled for audit logs. The rule is NON_COMPLIANT if an Amazon DocumentDB instance cluster does not have CloudWatch log export enabled for audit logs."
  input_parameters = "{}"
  name             = "securityhub-docdb-cluster-audit-logging-enabled-00e627f6"

  scope {
    compliance_resource_types = ["AWS::RDS::DBCluster"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DOCDB_CLUSTER_AUDIT_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-docdb-cluster-backup-retention-check-7fa4c297" {
  description      = "Checks if an Amazon Document DB cluster retention period is set to a specific number of days. The rule is NON_COMPLIANT if the retention period is less than the value specified by the parameter."
  input_parameters = "{}"
  name             = "securityhub-docdb-cluster-backup-retention-check-7fa4c297"

  scope {
    compliance_resource_types = ["AWS::RDS::DBCluster"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DOCDB_CLUSTER_BACKUP_RETENTION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-docdb-cluster-deletion-protection-enabled-1032cc6e" {
  description      = "Checks if an Amazon DocumentDB (with MongoDB compatibility) cluster has deletion protection enabled. The rule is NON_COMPLIANT if an Amazon DocumentDB cluster has the deletionProtection field set to false."
  input_parameters = "{}"
  name             = "securityhub-docdb-cluster-deletion-protection-enabled-1032cc6e"

  scope {
    compliance_resource_types = ["AWS::RDS::DBCluster"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DOCDB_CLUSTER_DELETION_PROTECTION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-docdb-cluster-encrypted-2e755334" {
  description      = "Checks if storage encryption is enabled for your Amazon DocumentDB DB clusters. The rule is NON_COMPLIANT if storage encryption is not enabled."
  input_parameters = "{}"
  name             = "securityhub-docdb-cluster-encrypted-2e755334"

  scope {
    compliance_resource_types = ["AWS::RDS::DBCluster"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DOCDB_CLUSTER_ENCRYPTED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-docdb-cluster-snapshot-public-prohibited-5eb48e28" {
  description      = "Checks if Amazon DocumentDB manual cluster snapshots are public. The rule is NON_COMPLIANT if any Amazon DocumentDB manual cluster snapshots are public."
  input_parameters = "{}"
  name             = "securityhub-docdb-cluster-snapshot-public-prohibited-5eb48e28"

  scope {
    compliance_resource_types = ["AWS::RDS::DBClusterSnapshot"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "DOCDB_CLUSTER_SNAPSHOT_PUBLIC_PROHIBITED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dynamodb-autoscaling-enabled-693d8157" {
  description                 = "Checks whether Auto Scaling or On-Demand is enabled on your DynamoDB tables and/or global secondary indexes. Optionally you can set the read and write capacity units for the table or global secondary index."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-dynamodb-autoscaling-enabled-693d8157"

  source {
    owner                 = "AWS"
    source_identifier     = "DYNAMODB_AUTOSCALING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-dynamodb-pitr-enabled-c330b258" {
  description      = "Checks that point in time recovery (PITR) is enabled for Amazon DynamoDB tables. The rule is NON_COMPLIANT if point in time recovery is not enabled for Amazon DynamoDB tables"
  input_parameters = "{}"
  name             = "securityhub-dynamodb-pitr-enabled-c330b258"

  source {
    owner                 = "AWS"
    source_identifier     = "DYNAMODB_PITR_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ebs-snapshot-public-restorable-check-47d75871" {
  description                 = "Checks whether Amazon Elastic Block Store snapshots are not publicly restorable."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ebs-snapshot-public-restorable-check-47d75871"

  source {
    owner                 = "AWS"
    source_identifier     = "EBS_SNAPSHOT_PUBLIC_RESTORABLE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-ebs-encryption-by-default-e639d9f9" {
  description                 = "Checks that Amazon Elastic Block Store (EBS) encryption is enabled by default. The rule is NON_COMPLIANT if the encryption is not enabled."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ec2-ebs-encryption-by-default-e639d9f9"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_EBS_ENCRYPTION_BY_DEFAULT"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-imdsv2-check-47f2c681" {
  description      = "Checks whether your Amazon Elastic Compute Cloud (Amazon EC2) instance metadata version is configured with Instance Metadata Service Version 2 (IMDSv2)."
  input_parameters = "{}"
  name             = "securityhub-ec2-imdsv2-check-47f2c681"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_IMDSV2_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-instance-managed-by-ssm-5ded5599" {
  description      = "Checks whether the Amazon EC2 instances in your account are managed by AWS Systems Manager."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-managed-by-ssm-5ded5599"

  scope {
    compliance_resource_types = ["AWS::EC2::Instance", "AWS::SSM::ManagedInstanceInventory"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_INSTANCE_MANAGED_BY_SSM"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-instance-multiple-eni-check-8a3c615c" {
  description      = "This control checks to see if Amazon EC2 instance uses multiple ENI/EFA. This control will pass if single network adapters is used."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-multiple-eni-check-8a3c615c"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_INSTANCE_MULTIPLE_ENI_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-instance-no-public-ip-da8b24f2" {
  description      = "Checks whether Amazon Elastic Compute Cloud (Amazon EC2) instances have a public IP association. The rule is NON_COMPLIANT if the publicIp field is present in the Amazon EC2 instance configuration item. This rule applies only to IPv4."
  input_parameters = "{}"
  name             = "securityhub-ec2-instance-no-public-ip-da8b24f2"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_INSTANCE_NO_PUBLIC_IP"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-launch-template-public-ip-disabled-d8dc27e1" {
  description      = "Checks if Amazon EC2 Launch Templates are set to assign public IP addresses to Network Interfaces. The rule is NON_COMPLIANT if the default version of an EC2 Launch Template has at least 1 Network Interface with  'AssociatePublicIpAddress' set to 'true'."
  input_parameters = "{}"
  name             = "securityhub-ec2-launch-template-public-ip-disabled-d8dc27e1"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_LAUNCH_TEMPLATE_PUBLIC_IP_DISABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-managedinstance-association-compliance-status-check-c49f78ab" {
  description      = "Checks whether the compliance status of the Amazon EC2 Systems Manager association compliance is COMPLIANT or NON_COMPLIANT after the association execution on the instance. The rule is COMPLIANT if the field status is COMPLIANT."
  input_parameters = "{}"
  name             = "securityhub-ec2-managedinstance-association-compliance-status-check-c49f78ab"

  scope {
    compliance_resource_types = ["AWS::SSM::AssociationCompliance"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_MANAGEDINSTANCE_ASSOCIATION_COMPLIANCE_STATUS_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-managedinstance-patch-compliance-dd200345" {
  description      = "Checks whether the compliance status of the Amazon EC2 Systems Manager patch compliance is COMPLIANT or NON_COMPLIANT after the patch installation on the instance."
  input_parameters = "{}"
  name             = "securityhub-ec2-managedinstance-patch-compliance-dd200345"

  scope {
    compliance_resource_types = ["AWS::SSM::PatchCompliance"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_MANAGEDINSTANCE_PATCH_COMPLIANCE_STATUS_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-stopped-instance-a082aeaf" {
  description                 = "Checks whether there are instances stopped for more than the allowed number of days."
  input_parameters            = "{\"AllowedDays\":\"30\"}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-ec2-stopped-instance-a082aeaf"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_STOPPED_INSTANCE"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ec2-transit-gateway-auto-vpc-attach-disabled-c22cbe3f" {
  description      = "This control checks if EC2 Transit Gateways are automatically accepting shared VPC attachments requests. This control will fail for a Transit Gateway that automatically accept shared VPC attachment requests."
  input_parameters = "{}"
  name             = "securityhub-ec2-transit-gateway-auto-vpc-attach-disabled-c22cbe3f"

  source {
    owner                 = "AWS"
    source_identifier     = "EC2_TRANSIT_GATEWAY_AUTO_VPC_ATTACH_DISABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecr-private-image-scanning-enabled-0604ef0a" {
  description      = "This control checks whether a private ECR repository has image scanning enabled. This control fails if a private ECR repository has image scanning disabled."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-image-scanning-enabled-0604ef0a"

  source {
    owner                 = "AWS"
    source_identifier     = "ECR_PRIVATE_IMAGE_SCANNING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecr-private-lifecycle-policy-configured-8117037b" {
  description      = "This control checks whether a ECR repository has at least one lifecycle policy configured. This control fails if a ECR repository does not have any lifecycle policies configured."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-lifecycle-policy-configured-8117037b"

  source {
    owner                 = "AWS"
    source_identifier     = "ECR_PRIVATE_LIFECYCLE_POLICY_CONFIGURED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecr-private-tag-immutability-enabled-e431ce22" {
  description      = "This control checks whether a private ECR repository has tag immutability enabled. This control fails if a private ECR repository has tag immutability disabled."
  input_parameters = "{}"
  name             = "securityhub-ecr-private-tag-immutability-enabled-e431ce22"

  source {
    owner                 = "AWS"
    source_identifier     = "ECR_PRIVATE_TAG_IMMUTABILITY_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-container-insights-enabled-9a0487fb" {
  description      = "This control checks if ECS clusters have container insights enabled. This control fails if container insights are disabled."
  input_parameters = "{}"
  name             = "securityhub-ecs-container-insights-enabled-9a0487fb"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_CONTAINER_INSIGHTS_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-containers-nonprivileged-77f48825" {
  description      = "This control checks if the Privileged parameter in the container definition of Amazon ECS Task Definitions is set to 'true'. This control fails if the Privileged parameter is 'true'."
  input_parameters = "{}"
  name             = "securityhub-ecs-containers-nonprivileged-77f48825"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_CONTAINERS_NONPRIVILEGED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-containers-readonly-access-0e04464f" {
  description      = "This control checks if ECS Containers are limited to read-only access to its mounted root filesystems. This control fails if the readonlyRootFilesystem parameter in the container definition of ECSTaskDefinitions is set to 'false'."
  input_parameters = "{}"
  name             = "securityhub-ecs-containers-readonly-access-0e04464f"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_CONTAINERS_READONLY_ACCESS"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-fargate-latest-platform-version-4b3a6877" {
  description      = "This control checks if ECS Fargate Services is running on the latest Fargate platform version. This control fails if \"PlatformVersion\" is not set to \"LATEST\" "
  input_parameters = "{\"latestLinuxVersion\":\"1.4.0\",\"latestWindowsVersion\":\"1.0.0\"}"
  name             = "securityhub-ecs-fargate-latest-platform-version-4b3a6877"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_FARGATE_LATEST_PLATFORM_VERSION"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-no-environment-secrets-85b74099" {
  description      = "This control checks if the key value of any variables in the 'environment' parameter of container definitions includes AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, or ECS_ENGINE_AUTH_DATA."
  input_parameters = "{\"secretKeys\":\"AWS_ACCESS_KEY_ID,AWS_SECRET_ACCESS_KEY,ECS_ENGINE_AUTH_DATA\"}"
  name             = "securityhub-ecs-no-environment-secrets-85b74099"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_NO_ENVIRONMENT_SECRETS"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-service-assign-public-ip-disabled-b1c6acb1" {
  description      = "This control checks whether ECS services are configured to automatically assign public IP addresses. This control fails if AssignPublicIP is ENABLED."
  input_parameters = "{\"version\":\"1.1\"}"
  name             = "securityhub-ecs-service-assign-public-ip-disabled-b1c6acb1"

  scope {
    compliance_resource_types = ["AWS::ECS::Service"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-task-definition-log-configuration-9ac2f86d" {
  description      = "This control checks if active Amazon ECS task definitions have a logging configuration specified."
  input_parameters = "{}"
  name             = "securityhub-ecs-task-definition-log-configuration-9ac2f86d"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_TASK_DEFINITION_LOG_CONFIGURATION"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-task-definition-pid-mode-check-df69624b" {
  description      = "This control checks if Amazon ECS Task Definitions are configured to share a host's process namespace with its containers. This control fails if the pidMode parameter is set to 'host'."
  input_parameters = "{}"
  name             = "securityhub-ecs-task-definition-pid-mode-check-df69624b"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_TASK_DEFINITION_PID_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-ecs-task-definition-user-for-host-mode-check-ef3e8cd8" {
  description      = "This control checks if an Amazon ECS Task Definition with host networking mode has \"privileged\" or \"user\" container definitions. The control fails with host network mode and container definitions are privileged=false or empty and user=root or empty."
  input_parameters = "{\"SkipInactiveTaskDefinitions\":\"true\"}"
  name             = "securityhub-ecs-task-definition-user-for-host-mode-check-ef3e8cd8"

  source {
    owner                 = "AWS"
    source_identifier     = "ECS_TASK_DEFINITION_USER_FOR_HOST_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-efs-access-point-enforce-root-directory-080a0145" {
  description      = "This control checks if Amazon Elastic File System (Amazon EFS) access points are configured to enforce a root directory. This control fails if the value of 'Path' is set to '/' (default root directory of the file system)."
  input_parameters = "{}"
  name             = "securityhub-efs-access-point-enforce-root-directory-080a0145"

  source {
    owner                 = "AWS"
    source_identifier     = "EFS_ACCESS_POINT_ENFORCE_ROOT_DIRECTORY"
  }
}

resource "aws_config_config_rule" "ac--securityhub-efs-access-point-enforce-user-identity-f6595eb1" {
  description      = "This control checks if Amazon Elastic File System (Amazon EFS) access points are configured to enforce a user identity. This control fails if 'PosixUser' is not defined or if parameters are provided and there is no match in the corresponding parameter."
  input_parameters = "{}"
  name             = "securityhub-efs-access-point-enforce-user-identity-f6595eb1"

  source {
    owner                 = "AWS"
    source_identifier     = "EFS_ACCESS_POINT_ENFORCE_USER_IDENTITY"
  }
}

resource "aws_config_config_rule" "ac--securityhub-efs-encrypted-check-3b749d2f" {
  description                 = "Elastic File System should be configured to encrypt file data at-rest using AWS KMS."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-efs-encrypted-check-3b749d2f"

  scope {
    compliance_resource_types = ["AWS::EFS::FileSystem"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "EFS_ENCRYPTED_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-efs-in-backup-plan-94fdd43c" {
  description                 = "Checks whether Amazon Elastic File System (Amazon EFS) file systems are added in the backup plans of AWS Backup. The rule is NON_COMPLIANT if EFS file systems are not included in the backup plans."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-efs-in-backup-plan-94fdd43c"

  source {
    owner                 = "AWS"
    source_identifier     = "EFS_IN_BACKUP_PLAN"
  }
}

resource "aws_config_config_rule" "ac--securityhub-eks-cluster-supported-version-859df2c0" {
  description      = "This control checks if an Amazon Elastic Kubernetes Service (EKS) cluster is running a supported Kubernetes version. This control fails if an EKS cluster is running an unsupported version (less than the parameter 'oldestVersionSupported')."
  input_parameters = "{\"oldestVersionSupported\":\"1.24\"}"
  name             = "securityhub-eks-cluster-supported-version-859df2c0"

  source {
    owner                 = "AWS"
    source_identifier     = "EKS_CLUSTER_SUPPORTED_VERSION"
  }
}

resource "aws_config_config_rule" "ac--securityhub-eks-endpoint-no-public-access-7c84b61d" {
  description      = "Checks whether Amazon Elastic Kubernetes Service (Amazon EKS) endpoint is not publicly accessible."
  input_parameters = "{}"
  name             = "securityhub-eks-endpoint-no-public-access-7c84b61d"

  scope {
    compliance_resource_types = ["AWS::EKS::Cluster"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "EKS_ENDPOINT_NO_PUBLIC_ACCESS"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elastic-beanstalk-logs-to-cloudwatch-5c09bc5a" {
  description      = "Checks if AWS Elastic Beanstalk environments are configured to send logs to Amazon CloudWatch Logs. The rule is NON_COMPLIANT if the value of `StreamLogs` is false."
  input_parameters = "{}"
  name             = "securityhub-elastic-beanstalk-logs-to-cloudwatch-5c09bc5a"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTIC_BEANSTALK_LOGS_TO_CLOUDWATCH"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elastic-beanstalk-managed-updates-enabled-55d3f48d" {
  description      = "Checks if managed platform updates in an AWS Elastic Beanstalk environment is enabled. The rule is NON_COMPLIANT if the value for `ManagedActionsEnabled` is set to false or if a parameter is provided whose value does not match the existing configurations."
  input_parameters = "{}"
  name             = "securityhub-elastic-beanstalk-managed-updates-enabled-55d3f48d"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTIC_BEANSTALK_MANAGED_UPDATES_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-audit-logging-enabled-68aed74d" {
  description      = "This control checks whether Elasticsearch domains have audit logging enabled. This control fails if an Elasticsearch domain does not have audit logging enabled."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-audit-logging-enabled-68aed74d"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-data-node-fault-tolerance-b62d704f" {
  description      = "This control checks whether Elasticsearch domains are configured with at least three data nodes and zoneAwarenessEnabled is true."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-data-node-fault-tolerance-b62d704f"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-encrypted-at-rest-36ff5da7" {
  description                 = "Checks whether Elasticsearch domains have encryption at rest configuration enabled."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-elasticsearch-encrypted-at-rest-36ff5da7"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTICSEARCH_ENCRYPTED_AT_REST"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-https-required-fc053797" {
  description      = "This control checks whether connections to Elasticsearch domains are required to use TLS 1.2.  The check fails if the Elasticsearch domain TLSSecurityPolicy is not Policy-Min-TLS-1-2-2019-07."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-https-required-fc053797"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-in-vpc-only-26302b9e" {
  description                 = "Checks whether Elasticsearch domains are in Amazon Virtual Private Cloud (Amazon VPC)."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-elasticsearch-in-vpc-only-26302b9e"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTICSEARCH_IN_VPC_ONLY"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-logs-to-cloudwatch-e63b4bdc" {
  description      = "This control checks whether Elasticsearch domains are configured to send error logs to CloudWatch Logs."
  input_parameters = "{\"logTypes\":\"error\"}"
  name             = "securityhub-elasticsearch-logs-to-cloudwatch-e63b4bdc"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTICSEARCH_LOGS_TO_CLOUDWATCH"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-node-to-node-encryption-check-adfd1533" {
  description      = "Check that Elasticsearch nodes are encrypted end to end. The rule is NON_COMPLIANT if the node-to-node encryption is disabled on the domain."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-node-to-node-encryption-check-adfd1533"

  source {
    owner                 = "AWS"
    source_identifier     = "ELASTICSEARCH_NODE_TO_NODE_ENCRYPTION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elasticsearch-primary-node-fault-tolerance-972bec71" {
  description      = "This control checks whether Elasticsearch domains are configured with at least three dedicated master nodes. This control fails if dedicatedMasterEnabled is not true."
  input_parameters = "{}"
  name             = "securityhub-elasticsearch-primary-node-fault-tolerance-972bec71"

  scope {
    compliance_resource_types = ["AWS::Elasticsearch::Domain"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-acm-certificate-required-f24fa0d4" {
  description      = "This control checks whether a Classic Load Balancer uses HTTPS/SSL certificates provided by AWS Certificate Manager."
  input_parameters = "{}"
  name             = "securityhub-elb-acm-certificate-required-f24fa0d4"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_ACM_CERTIFICATE_REQUIRED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-connection-draining-enabled-d6d8cff2" {
  description      = "This control checks whether AWS Classic Load Balancers have connection draining enabled."
  input_parameters = "{}"
  name             = "securityhub-elb-connection-draining-enabled-d6d8cff2"

  scope {
    compliance_resource_types = ["AWS::ElasticLoadBalancing::LoadBalancer"]
  }

  source {
    owner                 = "CUSTOM_LAMBDA"

    source_detail {
      event_source = "aws.config"
      message_type = "ConfigurationItemChangeNotification"
    }

    source_identifier = "arn:aws:lambda:eu-west-2:276608526062:function:SecurityHubConfigRule"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-cross-zone-load-balancing-enabled-8332cefa" {
  description      = "This control checks whether cross-zone load balancing is enabled for Classic Load Balancers. This control fails if cross-zone load balancing is not enabled for a Classic Load Balancer."
  input_parameters = "{}"
  name             = "securityhub-elb-cross-zone-load-balancing-enabled-8332cefa"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_CROSS_ZONE_LOAD_BALANCING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-deletion-protection-enabled-95a06bd3" {
  description      = "Checks whether Elastic Load Balancing has deletion protection enabled. The rule is NON_COMPLIANT if deletion_protection.enabled is false."
  input_parameters = "{}"
  name             = "securityhub-elb-deletion-protection-enabled-95a06bd3"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_DELETION_PROTECTION_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-logging-enabled-17f3d03f" {
  description      = "Checks whether the Application Load Balancer and the Classic Load Balancer have logging enabled. The rule is NON_COMPLIANT if the access_logs.s3.enabled is false or access_logs.S3.bucket is not equal to the s3BucketName that you provided."
  input_parameters = "{}"
  name             = "securityhub-elb-logging-enabled-17f3d03f"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-predefined-security-policy-ssl-check-7491cc78" {
  description      = "This control checks whether your Classic Load Balancer SSL listeners use the predefined policy ELBSecurityPolicy-TLS-1-2-2017-01."
  input_parameters = "{\"predefinedPolicyName\":\"ELBSecurityPolicy-TLS-1-2-2017-01\"}"
  name             = "securityhub-elb-predefined-security-policy-ssl-check-7491cc78"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_PREDEFINED_SECURITY_POLICY_SSL_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elb-tls-https-listeners-only-357bfbf5" {
  description      = "Check whether your Classic Load Balancer listeners are configured with HTTPS or SSL protocol for front-end (client to load balancer)."
  input_parameters = "{}"
  name             = "securityhub-elb-tls-https-listeners-only-357bfbf5"

  source {
    owner                 = "AWS"
    source_identifier     = "ELB_TLS_HTTPS_LISTENERS_ONLY"
  }
}

resource "aws_config_config_rule" "ac--securityhub-elbv2-multiple-az-6505a615" {
  description      = "This control checks if an Elastic Load Balancer V2 has registered instances from multiple Availability Zones (AZ's). This control fails if an Elastic Load Balancer V2 has instances registered in less than 2 AZ's."
  input_parameters = "{}"
  name             = "securityhub-elbv2-multiple-az-6505a615"

  source {
    owner                 = "AWS"
    source_identifier     = "ELBV2_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "ac--securityhub-emr-master-no-public-ip-c9209271" {
  description                 = "Checks whether Amazon Elastic MapReduce (EMR) clusters' master nodes have public IPs. The rule is NON_COMPLIANT if the master node has a public IP."
  input_parameters            = "{}"
  maximum_execution_frequency = "Twelve_Hours"
  name                        = "securityhub-emr-master-no-public-ip-c9209271"

  source {
    owner                 = "AWS"
    source_identifier     = "EMR_MASTER_NO_PUBLIC_IP"
  }
}

resource "aws_config_config_rule" "ac--securityhub-encrypted-volumes-eb0d59d6" {
  description      = "Checks whether the EBS volumes that are in an attached state are encrypted. If you specify the ID of a KMS key for encryption using the kmsId parameter, the rule checks if the EBS volumes in an attached state are encrypted with that KMS key."
  input_parameters = "{}"
  name             = "securityhub-encrypted-volumes-eb0d59d6"

  scope {
    compliance_resource_types = ["AWS::EC2::Volume"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ENCRYPTED_VOLUMES"
  }
}
