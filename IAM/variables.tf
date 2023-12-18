variable "aws_iam_account_password_policy_allow_users_to_change_password" {
  default = true
  type    = bool
}

variable "aws_iam_account_password_policy_hard_expiry" {
  default = false
  type    = bool
}

variable "aws_iam_account_password_policy_max_password_age" {
  default = 60
  type    = number
}

variable "aws_iam_account_password_policy_minimum_password_length" {
  default = 14
  type    = number
}

variable "aws_iam_account_password_policy_password_reuse_prevention" {
  default = 24
  type    = number
}

variable "aws_iam_account_password_policy_require_lowercase_characters" {
  default = true
  type    = bool
}

variable "aws_iam_account_password_policy_require_numbers" {
  default = true
  type    = bool
}

variable "aws_iam_account_password_policy_require_symbols" {
  default = true
  type    = bool
}

variable "aws_iam_account_password_policy_require_uppercase_characters" {
  default = true
  type    = bool
}

variable "aws_iam_group_name" {
  default = "Default"
  type    = string
}

variable "aws_iam_group_path" {
  default = "/"
  type    = string
}

variable "aws_iam_instance_profile_name" {
  default = "SSMInstanceProfile"
  type    = string
}

variable "aws_iam_instance_profile_path" {
  default = "/"
  type    = string
}

variable "aws_iam_instance_profile_role" {
  default = "SSMInstanceProfile"
  type    = string
}

variable "aws_iam_openid_connect_provider_client_id_list" {
  default = ["sts.amazonaws.com"]
  type    = set(string)
}

variable "aws_iam_openid_connect_provider_tags" {
  default {
    "alpha.eksctl.io/cluster-name"   = "scf-prod-EKS-cluster"
    "alpha.eksctl.io/eksctl-version" = "0.134.0-dev+97d10e0c6.2023-03-17T10:11:40Z"
  }

  type = map(string)
}

variable "aws_iam_openid_connect_provider_thumbprint_list" {
  default = ["9e99a48a9960b14926bb7f3b02e22da2b0ab7280"]
  type    = list(string)
}

variable "aws_iam_openid_connect_provider_url" {
  default = "oidc.eks.eu-west-2.amazonaws.com/id/C3C56F92ABE495DD7CA85B9FD9223BB6"
  type    = string
}

variable "aws_iam_policy_description" {
  default = "Policy for AutoCloudReadOnly"
  type    = string
}

variable "aws_iam_policy_name" {
  default = "AutoCloudReadOnlyPolicy1"
  type    = string
}

variable "aws_iam_policy_path" {
  default = "/"
  type    = string
}

variable "aws_iam_policy_policy" {
  default = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "a2c:Get*",
        "a4b:Get*",
        "a4b:List*",
        "access-analyzer:List*",
        "access-analyzer:Get*",
        "account:Get*",
        "account:List*",
        "acm-pca:List*",
        "acm-pca:Describe*",
        "acm-pca:Get*",
        "acm:Describe*",
        "acm:List*",
        "acm:Get*",
        "activate:Get*",
        "airflow:Get*",
        "airflow:List*",
        "amplify:List*",
        "amplify:Get*",
        "amplifybackend:List*",
        "amplifybackend:Get*",
        "amplifyuibuilder:List*",
        "amplifyuibuilder:Get*",
        "aoss:List*",
        "aoss:Get*",
        "apigateway:GET",
        "app-integrations:List*",
        "app-integrations:Get*",
        "appconfig:List*",
        "appconfig:Get*",
        "appfabric:List*",
        "appfabric:Get*",
        "appflow:List*",
        "appflow:Describe*",
        "application-autoscaling:Describe*",
        "application-autoscaling:List*",
        "application-cost-profiler:Get*",
        "application-cost-profiler:List*",
        "applicationinsights:List*",
        "applicationinsights:Describe*",
        "appmesh-preview:List*",
        "appmesh-preview:Describe*",
        "appmesh:List*",
        "appmesh:Describe*",
        "apprunner:List*",
        "apprunner:Describe*",
        "appstream:List*",
        "appstream:Describe*",
        "appsync:List*",
        "appsync:Get*",
        "aps:List*",
        "aps:Describe*",
        "aps:Get*",
        "arc-zonal-shift:Get*",
        "arc-zonal-shift:List*",
        "artifact:Get*",
        "artifact:List*",
        "athena:List*",
        "athena:Get*",
        "auditmanager:List*",
        "auditmanager:Get*",
        "autoscaling-plans:Describe*",
        "autoscaling:Describe*",
        "autoscaling:Get*",
        "aws-marketplace:List*",
        "aws-marketplace:Describe*",
        "aws-marketplace:GetEntitlements",
        "aws-marketplace:GetResourcePolicy",
        "aws-portal:Get*",
        "awsconnector:Get*",
        "backup-gateway:List*",
        "backup-gateway:Get*",
        "backup-storage:Describe*",
        "backup-storage:Get*",
        "backup:Describe*",
        "backup:Get*",
        "backup:List*",
        "batch:List*",
        "batch:Describe*",
        "bedrock:List*",
        "bedrock:Get*",
        "billing:Get*",
        "billing:List*",
        "billingconductor:List*",
        "braket:Get*",
        "braket:List*",
        "budgets:Describe*",
        "bugbust:Get*",
        "bugbust:List*",
        "cases:List*",
        "cases:Get*",
        "ce:List*",
        "ce:Describe*",
        "ce:Get*",
        "chatbot:List*",
        "chatbot:Describe*",
        "chatbot:Get*",
        "cleanrooms:List*",
        "cleanrooms:GetCollaborationAnalysisTemplate",
        "cleanrooms:GetMembership",
        "cleanrooms:GetAnalysisTemplate",
        "cleanrooms:GetCollaboration",
        "cloud9:List*",
        "cloud9:Describe*",
        "cloud9:Get*",
        "cloudformation:Describe*",
        "cloudformation:Get*",
        "cloudformation:List*",
        "cloudfront:Describe*",
        "cloudfront:Get*",
        "cloudfront:List*",
        "cloudsearch:List*",
        "cloudsearch:Describe*",
        "cloudshell:GetEnvironmentStatus",
        "cloudtrail:List*",
        "cloudtrail:Describe*",
        "cloudtrail:Get*",
        "cloudwatch:List*",
        "cloudwatch:Describe*",
        "cloudwatch:Get*",
        "codebuild:List*",
        "codebuild:Describe*",
        "codebuild:Get*",
        "codecatalyst:Get*",
        "codecatalyst:List*",
        "codecommit:Describe*",
        "codecommit:Get*",
        "codecommit:List*",
        "codedeploy-commands-secure:Get*",
        "codedeploy:List*",
        "codedeploy:Get*",
        "codepipeline:List*",
        "codepipeline:Get*",
        "codestar-connections:List*",
        "codestar-connections:Get*",
        "codestar-notifications:Describe*",
        "codestar-notifications:List*",
        "codestar:List*",
        "codestar:Describe*",
        "codestar:Get*",
        "cognito-identity:List*",
        "cognito-identity:Describe*",
        "cognito-identity:Get*",
        "cognito-idp:Describe*",
        "cognito-idp:Get*",
        "cognito-idp:List*",
        "cognito-sync:List*",
        "cognito-sync:Describe*",
        "cognito-sync:Get*",
        "compute-optimizer:Describe*",
        "compute-optimizer:Get*",
        "config:Describe*",
        "config:Get*",
        "config:List*",
        "connect-campaigns:List*",
        "connect-campaigns:Describe*",
        "connect-campaigns:Get*",
        "connect:Describe*",
        "connect:Get*",
        "connect:List*",
        "consoleapp:Get*",
        "consoleapp:List*",
        "consolidatedbilling:Get*",
        "consolidatedbilling:List*",
        "controltower:List*",
        "controltower:Describe*",
        "controltower:Get*",
        "cur:Describe*",
        "cur:Get*",
        "customer-verification:Get*",
        "databrew:List*",
        "databrew:Describe*",
        "dataexchange:List*",
        "dataexchange:Get*",
        "datapipeline:List*",
        "datapipeline:Describe*",
        "datapipeline:Get*",
        "datasync:List*",
        "datasync:Describe*",
        "datazone:Get*",
        "datazone:List*",
        "datazonecontrol:List*",
        "datazonecontrol:Get*",
        "dax:List*",
        "dax:Describe*",
        "dbqms:Describe*",
        "deepcomposer:List*",
        "deepcomposer:Get*",
        "deeplens:List*",
        "deeplens:Get*",
        "deepracer:List*",
        "deepracer:Get*",
        "detective:List*",
        "detective:Describe*",
        "detective:Get*",
        "devicefarm:Get*",
        "devicefarm:List*",
        "devops-guru:List*",
        "devops-guru:Describe*",
        "devops-guru:Get*",
        "directconnect:List*",
        "directconnect:Describe*",
        "discovery:List*",
        "discovery:Describe*",
        "discovery:Get*",
        "dlm:Get*",
        "dlm:List*",
        "dms:Describe*",
        "dms:Get*",
        "dms:List*",
        "docdb-elastic:Get*",
        "docdb-elastic:List*",
        "drs:Describe*",
        "drs:Get*",
        "drs:List*",
        "ds:Get*",
        "ds:List*",
        "ds:Describe*",
        "dynamodb:List*",
        "dynamodb:Describe*",
        "ebs:Get*",
        "ebs:List*",
        "ec2:Describe*",
        "ec2:List*",
        "ec2:Get*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "a4b:GetRoomSkillParameter",
        "a4b:GetRoom",
        "amplifybackend:GetToken",
        "appsync:GetSchemaCreationStatus",
        "appsync:ListApiKeys",
        "athena:GetQueryExecution",
        "athena:GetQueryResultsStream",
        "athena:GetTableMetadata",
        "athena:GetQueryResults",
        "athena:GetCalculationExecutionStatus",
        "athena:GetCalculationExecution",
        "athena:GetCalculationExecutionCode",
        "athena:GetNamedQuery",
        "athena:GetQueryRuntimeStatistics",
        "auditmanager:GetEvidenceFileUploadUrl",
        "auditmanager:GetChangeLogs",
        "backup-storage:GetChunk",
        "backup-storage:GetObjectMetadata",
        "billing:GetSellerOfRecord",
        "billing:GetContractInformation",
        "ce:GetDimensionValues",
        "cloud9:GetUserPublicKey",
        "cloudtrail:GetQueryResults",
        "cloudtrail:GetTrail",
        "cloudwatch:GetMetricStream",
        "cloudwatch:GetMetricData",
        "cloudwatch:GetMetricWidgetImage",
        "codecommit:GetObjectIdentifier",
        "cognito-identity:GetCredentialsForIdentity",
        "cognito-identity:GetOpenIdTokenForDeveloperIdentity",
        "cognito-identity:GetOpenIdToken",
        "cognito-idp:GetSigningCertificate",
        "connect:GetMetricDataV2",
        "connect:GetFederationToken",
        "connect:GetFederationTokens",
        "connect:GetMetricData",
        "deepracer:GetPrivateLeaderboard",
        "ec2:GetPasswordData"
      ],
      "Effect": "Deny",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  type = string
}

variable "aws_iam_saml_provider_name" {
  default = "AWSSSO_e24820b875e81f00_DO_NOT_DELETE"
  type    = string
}

variable "aws_iam_saml_provider_saml_metadata_document" {
  default = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><md:EntityDescriptor xmlns:md=\"urn:oasis:names:tc:SAML:2.0:metadata\" entityID=\"https://portal.sso.eu-west-2.amazonaws.com/saml/assertion/MTQ3NTc4ODg5ODY5X2lucy1mNTQxMDdjOTdhZDI0MjQw\">\n  <md:IDPSSODescriptor WantAuthnRequestsSigned=\"false\" protocolSupportEnumeration=\"urn:oasis:names:tc:SAML:2.0:protocol\">\n    <md:KeyDescriptor use=\"signing\">\n      <ds:KeyInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\">\n        <ds:X509Data>\n          <ds:X509Certificate>MIIDBzCCAe+gAwIBAgIFAIcHbhQwDQYJKoZIhvcNAQELBQAwRTEWMBQGA1UEAwwNYW1hem9uYXdzLmNvbTENMAsGA1UECwwESURBUzEPMA0GA1UECgwGQW1hem9uMQswCQYDVQQGEwJVUzAeFw0yMzA2MDgwODA5MDBaFw0yODA2MDgwODA5MDBaMEUxFjAUBgNVBAMMDWFtYXpvbmF3cy5jb20xDTALBgNVBAsMBElEQVMxDzANBgNVBAoMBkFtYXpvbjELMAkGA1UEBhMCVVMwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQC2582UkfzsasSvx/JLVlKr8Mi416Nuc59UfTQO1dsf0iHIu7oixYFdDI8GWUtyO+mk7fhJHRppwaticbBXPCOv5YPaiTwAn+8SOY8Q1iYmqbwq0vuML5qtfq6FcStS0u8AHVLdzTlrPrezFWScMAhxCvzb3o7kaWRkZXu2e6sNOxKvGS2ing/lxxndyPdumaHIpy/exs7JJHnNDIq+pP2CetyKkYSusvKtOTqMRB4+6Li/ErmntUnHVFUKIG8HB0NkXr7/oIWL72Aowe1Nu30WcUnKngzgRYrCIyB/pdwIqfFw4xJS0AW58coi8mdAo6JpUhgjK6UckG565cj7TVIFAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAB/K+pa8LVTrjVOxU7lNY0G6ZhUxXn23pfXW+M+Ebbp3lJhtVuR7AmeU8FaeqoP8hhFTDKH33wjCV1ixeczj4Ah+pMBZLqheKe9rl0T/w1zosBU44ekyDhF8NAMJ3Qj6siqP1hy8PXH8os8EoN1tv9uTz2LZRkvuSksMAZqM2+oW/UtUX6xhaKXeMmd9sHwxUyhlhQ5XMkCJHsEfcDxla5OEoVYU+Rz6Ka0ODYUDjHG9X3YAanZgVJuAdYyKTPCAX1IxIhdrKG2kWUYQLJsh8klKtUTFbcjlA/L/Bml8iKtxxzgsGsXt0Sb4voU22Wg9YSRWdF7YdIl1NdrV07rAJr4=</ds:X509Certificate>\n        </ds:X509Data>\n      </ds:KeyInfo>\n    </md:KeyDescriptor>\n    <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.eu-west-2.amazonaws.com/saml/logout/MTQ3NTc4ODg5ODY5X2lucy1mNTQxMDdjOTdhZDI0MjQw\"/>\n    <md:SingleLogoutService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.eu-west-2.amazonaws.com/saml/logout/MTQ3NTc4ODg5ODY5X2lucy1mNTQxMDdjOTdhZDI0MjQw\"/>\n    <md:NameIDFormat>urn:oasis:names:tc:SAML:2.0:nameid-format:persistent</md:NameIDFormat>\n    <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST\" Location=\"https://portal.sso.eu-west-2.amazonaws.com/saml/assertion/MTQ3NTc4ODg5ODY5X2lucy1mNTQxMDdjOTdhZDI0MjQw\"/>\n    <md:SingleSignOnService Binding=\"urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect\" Location=\"https://portal.sso.eu-west-2.amazonaws.com/saml/assertion/MTQ3NTc4ODg5ODY5X2lucy1mNTQxMDdjOTdhZDI0MjQw\"/>\n  </md:IDPSSODescriptor>\n</md:EntityDescriptor>\n"
  type    = string
}
