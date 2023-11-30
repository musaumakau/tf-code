resource "aws_kms_alias" "ac--alias-002F-aws_solv_kenya_aujas_cloudtrail" {
  name          = "alias/aws_solv_kenya_aujas_cloudtrail"
  target_key_id = aws_kms_key.ac--377cd5e8-28af-4800-85f6-fd07e485e156.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector" {
  name          = "alias/inspector"
  target_key_id = aws_kms_key.ac--f27600ec-2242-4d0c-be8c-fd30231c7d46.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector2" {
  name          = "alias/inspector2"
  target_key_id = aws_kms_key.ac--215a642a-2867-402e-acff-eefb355d5bd6.key_id
}

resource "aws_kms_alias" "ac--alias-002F-inspector3" {
  name          = "alias/inspector3"
  target_key_id = aws_kms_key.ac--bdc31b17-e378-4d70-ad3c-1a51aad367a2.key_id
}

resource "aws_kms_key" "ac--00512500-98ee-49b5-82ea-91a5d6f969bc" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my SSM parameters when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-ssm-1\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"ssm.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through SSM for all principals in the account that are authorized to use SSM\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--0b4328c0-33bf-4262-acce-6d58e27c988b" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my Amazon OpenSearch Service (successor to Amazon Elasticsearch Service) data when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-es-2\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"es.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through OpenSearch Service for all principals in the account that are authorized to use OpenSearch Service\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\"],\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"es.amazonaws.com\"},\"Resource\":\"*\",\"Sid\":\"Allow OpenSearch service principals to describe the key directly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--146a4f6a-c538-46d9-a3f5-79c29aefbfb0" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my Kafka data when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-kafka-1\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"kafka.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through Kafka for all principals in the account that are authorized to use Kafka\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--215a642a-2867-402e-acff-eefb355d5bd6" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"key-consolepolicy-3\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"},{\"Action\":[\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:RevokeGrant\",\"kms:Create*\",\"kms:Describe*\",\"kms:Enable*\",\"kms:List*\",\"kms:Put*\",\"kms:Update*\",\"kms:Revoke*\",\"kms:Disable*\",\"kms:Get*\",\"kms:Delete*\",\"kms:TagResource\",\"kms:UntagResource\",\"kms:ScheduleKeyDeletion\",\"kms:CancelKeyDeletion\",\"kms:Decrypt\",\"kms:GenerateDataKey*\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::766176144542:role/aws-service-role/inspector2.amazonaws.com/AWSServiceRoleForAmazonInspector2\",\"arn:aws:iam::766176144542:user/admin-jenkins\"],\"Service\":\"inspector2.amazonaws.com\"},\"Resource\":\"*\",\"Sid\":\"Allow access for Key Administrators\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--2d70f0ba-a13f-4642-883a-48f115ba9106" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my EBS volumes when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-ebs-2\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"ec2.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through EBS for all principals in the account that are authorized to use EBS\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--377cd5e8-28af-4800-85f6-fd07e485e156" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = false
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"key-consolepolicy-3\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--74456533-ddc2-4457-a1e6-d2c7456da609" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my Lambda functions when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-awslambda\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"lambda.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through AWS Lambda for all principals in the account that are authorized to use AWS Lambda\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--80e8aa30-cffe-4adc-ac33-8d10106d1cb0" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my SNS data when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-sns-1\",\"Statement\":[{\"Action\":[\"kms:Decrypt\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"sns.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through SNS for all principals in the account that are authorized to use SNS\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--9d37b450-2749-440d-843e-c6d56bfbc5ac" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my RDS database volumes when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-rds-2\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"rds.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through RDS for all principals in the account that are authorized to use RDS\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--bdc31b17-e378-4d70-ad3c-1a51aad367a2" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"key-consolepolicy-3\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"},{\"Action\":[\"kms:Create*\",\"kms:Describe*\",\"kms:Enable*\",\"kms:List*\",\"kms:Put*\",\"kms:Update*\",\"kms:Revoke*\",\"kms:Disable*\",\"kms:Get*\",\"kms:Delete*\",\"kms:TagResource\",\"kms:UntagResource\",\"kms:ScheduleKeyDeletion\",\"kms:CancelKeyDeletion\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:user/admin-jenkins\"},\"Resource\":\"*\",\"Sid\":\"Allow access for Key Administrators\"},{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:DescribeKey\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-limit-reconcilation-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-ke-scf-anchor-invoice-ui-upload\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-invoice-file-dump-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-fs-listeners-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-invoice-reconcilation-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-limit-file-dump-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-mediastorefile-kenya\",\"arn:aws:iam::766176144542:role/datasync-transfer-role\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-solvezy-ocr-applog-prodkenya\"]},\"Resource\":\"*\",\"Sid\":\"Allow use of the key\"},{\"Action\":[\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:RevokeGrant\"],\"Condition\":{\"Bool\":{\"kms:GrantIsForAWSResource\":\"true\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-limit-reconcilation-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-ke-scf-anchor-invoice-ui-upload\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-invoice-file-dump-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-fs-listeners-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-invoice-reconcilation-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-scf-limit-file-dump-kenya\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-prod-mediastorefile-kenya\",\"arn:aws:iam::766176144542:role/datasync-transfer-role\",\"arn:aws:iam::766176144542:role/service-role/AWSDataSyncS3BucketAccess-solvezy-ocr-applog-prodkenya\"]},\"Resource\":\"*\",\"Sid\":\"Allow attachment of persistent resources\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--cc3c07b7-16d3-43c1-be5e-98c28d21985f" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my S3 objects when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-s3-2\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:GenerateDataKey*\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"s3.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through S3 for all principals in the account that are authorized to use S3\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--d04b41ec-0e67-453b-a9fd-808260edda46" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  description              = "Default key that protects my Secrets Manager data when no other key is defined"
  enable_key_rotation      = true
  is_enabled               = true
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"auto-secretsmanager-2\",\"Statement\":[{\"Action\":[\"kms:Encrypt\",\"kms:Decrypt\",\"kms:ReEncrypt*\",\"kms:CreateGrant\",\"kms:DescribeKey\"],\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\",\"kms:ViaService\":\"secretsmanager.eu-west-2.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through AWS Secrets Manager for all principals in the account that are authorized to use AWS Secrets Manager\"},{\"Action\":\"kms:GenerateDataKey*\",\"Condition\":{\"StringEquals\":{\"kms:CallerAccount\":\"766176144542\"},\"StringLike\":{\"kms:ViaService\":\"secretsmanager.*.amazonaws.com\"}},\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"*\",\"Sid\":\"Allow access through AWS Secrets Manager for all principals in the account that are authorized to use AWS Secrets Manager\"},{\"Action\":[\"kms:Describe*\",\"kms:Get*\",\"kms:List*\",\"kms:RevokeGrant\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Allow direct access to key metadata to the account\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_kms_key" "ac--f27600ec-2242-4d0c-be8c-fd30231c7d46" {
  customer_master_key_spec = "SYMMETRIC_DEFAULT"
  enable_key_rotation      = false
  is_enabled               = false
  key_usage                = "ENCRYPT_DECRYPT"
  multi_region             = false
  policy                   = "{\"Id\":\"key-consolepolicy-3\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"},{\"Action\":[\"kms:Create*\",\"kms:Describe*\",\"kms:Enable*\",\"kms:List*\",\"kms:Put*\",\"kms:Update*\",\"kms:Revoke*\",\"kms:Disable*\",\"kms:Get*\",\"kms:Delete*\",\"kms:TagResource\",\"kms:UntagResource\",\"kms:ScheduleKeyDeletion\",\"kms:CancelKeyDeletion\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:role/aws-service-role/inspector2.amazonaws.com/AWSServiceRoleForAmazonInspector2\"},\"Resource\":\"*\",\"Sid\":\"Allow access for Key Administrators\"}],\"Version\":\"2012-10-17\"}"
}
