resource "aws_config_config_rule" "ac--securityhub-access-keys-rotated-7ea17b60" {
  description                 = var.aws_config_config_rule_description
  input_parameters            = var.aws_config_config_rule_input_parameters
  maximum_execution_frequency = var.aws_config_config_rule_maximum_execution_frequency
  name                        = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "ACCESS_KEYS_ROTATED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-acm-certificate-expiration-check-de84c35c" {
  description                 = var.aws_config_config_rule_description
  input_parameters            = var.aws_config_config_rule_input_parameters
  maximum_execution_frequency = var.aws_config_config_rule_maximum_execution_frequency
  name                        = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::ACM::Certificate"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ACM_CERTIFICATE_EXPIRATION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-acm-certificate-rsa-check-7d7e574f" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::ACM::Certificate"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ACM_CERTIFICATE_RSA_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-acm-pca-root-ca-disabled-8fa88e52" {
  description                 = var.aws_config_config_rule_description
  input_parameters            = var.aws_config_config_rule_input_parameters
  maximum_execution_frequency = var.aws_config_config_rule_maximum_execution_frequency
  name                        = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::ACMPCA::CertificateAuthority"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ACM_PCA_ROOT_CA_DISABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-desync-mode-check-76f60f1c" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_DESYNC_MODE_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-http-drop-invalid-header-enabled-6514befb" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_HTTP_DROP_INVALID_HEADER_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-alb-http-to-https-redirection-check-fb87934f" {
  description                 = var.aws_config_config_rule_description
  input_parameters            = var.aws_config_config_rule_input_parameters
  maximum_execution_frequency = var.aws_config_config_rule_maximum_execution_frequency
  name                        = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "ALB_HTTP_TO_HTTPS_REDIRECTION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-associated-with-waf-376d2745" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_ASSOCIATED_WITH_WAF"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-cache-encrypted-45ad2baa" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

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
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_EXECUTION_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gw-ssl-enabled-4688793a" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "API_GW_SSL_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gwv2-access-logs-enabled-9f113dfd" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "API_GWV2_ACCESS_LOGS_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-api-gwv2-authorization-type-configured-b858971a" {
  description                 = var.aws_config_config_rule_description
  input_parameters            = var.aws_config_config_rule_input_parameters
  maximum_execution_frequency = var.aws_config_config_rule_maximum_execution_frequency
  name                        = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "API_GWV2_AUTHORIZATION_TYPE_CONFIGURED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-appsync-authorization-check-42c485d1" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::AppSync::GraphQLApi"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "APPSYNC_AUTHORIZATION_CHECK"
  }
}

resource "aws_config_config_rule" "ac--securityhub-appsync-logging-enabled-dcbf6f66" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::AppSync::GraphQLApi"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "APPSYNC_LOGGING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-athena-workgroup-encrypted-at-rest-f2a8c3e9" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::Athena::WorkGroup"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "ATHENA_WORKGROUP_ENCRYPTED_AT_REST"
  }
}

resource "aws_config_config_rule" "ac--securityhub-aurora-mysql-backtracking-enabled-a484a897" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AURORA_MYSQL_BACKTRACKING_ENABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-group-elb-healthcheck-required-d7a80594" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::AutoScaling::AutoScalingGroup"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_GROUP_ELB_HEALTHCHECK_REQUIRED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-config-hop-limit-f1b54941" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_CONFIG_HOP_LIMIT"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-config-public-ip-disabled-3bcfc0c6" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_CONFIG_PUBLIC_IP_DISABLED"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launch-template-d9dbba41" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCH_TEMPLATE"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-launchconfig-requires-imdsv2-6594947a" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_LAUNCHCONFIG_REQUIRES_IMDSV2"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-multiple-az-e8153ae7" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_MULTIPLE_AZ"
  }
}

resource "aws_config_config_rule" "ac--securityhub-autoscaling-multiple-instance-types-089908a8" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  source {
    owner                 = "AWS"
    source_identifier     = "AUTOSCALING_MULTIPLE_INSTANCE_TYPES"
  }
}

resource "aws_config_config_rule" "ac--securityhub-backup-recovery-point-encrypted-bdf9f754" {
  description      = var.aws_config_config_rule_description
  input_parameters = var.aws_config_config_rule_input_parameters
  name             = var.aws_config_config_rule_name

  scope {
    compliance_resource_types = ["AWS::Backup::RecoveryPoint"]
  }

  source {
    owner                 = "AWS"
    source_identifier     = "BACKUP_RECOVERY_POINT_ENCRYPTED"
  }
}
