resource "aws_iam_account_password_policy" "ac--iam-account-password-policy" {
  allow_users_to_change_password = var.aws_iam_account_password_policy_allow_users_to_change_password
  hard_expiry                    = var.aws_iam_account_password_policy_hard_expiry
  max_password_age               = var.aws_iam_account_password_policy_max_password_age
  minimum_password_length        = var.aws_iam_account_password_policy_minimum_password_length
  password_reuse_prevention      = var.aws_iam_account_password_policy_password_reuse_prevention
  require_lowercase_characters   = var.aws_iam_account_password_policy_require_lowercase_characters
  require_numbers                = var.aws_iam_account_password_policy_require_numbers
  require_symbols                = var.aws_iam_account_password_policy_require_symbols
  require_uppercase_characters   = var.aws_iam_account_password_policy_require_uppercase_characters
}

resource "aws_iam_group" "ac--CICDPipeline" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_group" "ac--Default" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_group" "ac--NOC" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_group" "ac--SecurityAuditors" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_group" "ac--application-support-team" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_group" "ac--readonly" {
  name = var.aws_iam_group_name
  path = var.aws_iam_group_path
}

resource "aws_iam_instance_profile" "ac--AmazonSSMRoleForInstancesQuickSetup-1" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_instance_profile" "ac--Metabase-Start-Stop-1" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_instance_profile" "ac--SSMInstanceProfile-1" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_instance_profile" "ac--Scf-Kenya-Prod-SSM-IamInstanceProfile-m3b2MsTx71Af" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_instance_profile" "ac--aujas-qradar-server-role-1" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_instance_profile" "ac--eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a" {
  name = var.aws_iam_instance_profile_name
  path = var.aws_iam_instance_profile_path
  role = var.aws_iam_instance_profile_role
}

resource "aws_iam_openid_connect_provider" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-oidc-provider-002F-oidc-002E-eks-002E-eu-west-2-002E-amazonaws-002E-com-002F-id-002F-C3C56F92ABE495DD7CA85B9FD9223BB6" {
  client_id_list  = var.aws_iam_openid_connect_provider_client_id_list
  tags            = var.aws_iam_openid_connect_provider_tags
  thumbprint_list = var.aws_iam_openid_connect_provider_thumbprint_list
  url             = var.aws_iam_openid_connect_provider_url
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AWSLoadBalancerControllerIAMPolicy" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AllowListingOfUserFolder" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AmazonEKS_EBS_CSI_Driver_Policy" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AutoCloudReadOnlyPolicy1" {
  description = var.aws_iam_policy_description
  name        = var.aws_iam_policy_name
  path        = var.aws_iam_policy_path
  policy      = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AutoCloudReadOnlyPolicy2" {
  description = var.aws_iam_policy_description
  name        = var.aws_iam_policy_name
  path        = var.aws_iam_policy_path
  policy      = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AutoCloudReadOnlyPolicy3" {
  description = var.aws_iam_policy_description
  name        = var.aws_iam_policy_name
  path        = var.aws_iam_policy_path
  policy      = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-AutoCloudReadOnlyPolicy4" {
  description = var.aws_iam_policy_description
  name        = var.aws_iam_policy_name
  path        = var.aws_iam_policy_path
  policy      = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-CloudTrailPolicyForCloudWatchLogs" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-CloudfrontJenkinsPolicies" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_policy" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-policy-002F-CognitoUserPoolForProdSupport" {
  name   = var.aws_iam_policy_name
  path   = var.aws_iam_policy_path
  policy = var.aws_iam_policy_policy
}

resource "aws_iam_saml_provider" "ac--arn-003A-aws-003A-iam-003A--003A-766176144542-003A-saml-provider-002F-AWSSSO_e24820b875e81f00_DO_NOT_DELETE" {
  name                   = var.aws_iam_saml_provider_name
  saml_metadata_document = var.aws_iam_saml_provider_saml_metadata_document
}
