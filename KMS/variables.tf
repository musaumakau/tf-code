variable "aws_kms_alias_name" {
  default = "alias/inspector3"
  type    = string
}

variable "aws_kms_key_customer_master_key_spec" {
  default = "SYMMETRIC_DEFAULT"
  type    = string
}

variable "aws_kms_key_description" {
  default = "Default key that protects my S3 objects when no other key is defined"
  type    = string
}

variable "aws_kms_key_enable_key_rotation" {
  default = true
  type    = bool
}

variable "aws_kms_key_is_enabled" {
  default = true
  type    = bool
}

variable "aws_kms_key_key_usage" {
  default = "ENCRYPT_DECRYPT"
  type    = string
}

variable "aws_kms_key_multi_region" {
  default = false
  type    = bool
}

variable "aws_kms_key_policy" {
  default = "{\"Id\":\"key-consolepolicy-3\",\"Statement\":[{\"Action\":\"kms:*\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"*\",\"Sid\":\"Enable IAM User Permissions\"},{\"Action\":[\"kms:CreateGrant\",\"kms:ListGrants\",\"kms:RevokeGrant\",\"kms:Create*\",\"kms:Describe*\",\"kms:Enable*\",\"kms:List*\",\"kms:Put*\",\"kms:Update*\",\"kms:Revoke*\",\"kms:Disable*\",\"kms:Get*\",\"kms:Delete*\",\"kms:TagResource\",\"kms:UntagResource\",\"kms:ScheduleKeyDeletion\",\"kms:CancelKeyDeletion\",\"kms:Decrypt\",\"kms:GenerateDataKey*\"],\"Effect\":\"Allow\",\"Principal\":{\"AWS\":[\"arn:aws:iam::766176144542:user/admin-jenkins\",\"arn:aws:iam::766176144542:role/aws-service-role/inspector2.amazonaws.com/AWSServiceRoleForAmazonInspector2\"],\"Service\":\"inspector2.amazonaws.com\"},\"Resource\":\"*\",\"Sid\":\"Allow access for Key Administrators\"}],\"Version\":\"2012-10-17\"}"
  type    = string
}
