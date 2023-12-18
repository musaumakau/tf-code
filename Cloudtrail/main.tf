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

  cloud_watch_logs_group_arn    = var.aws_cloudtrail_cloud_watch_logs_group_arn
  cloud_watch_logs_role_arn     = var.aws_cloudtrail_cloud_watch_logs_role_arn
  enable_log_file_validation    = var.aws_cloudtrail_enable_log_file_validation
  enable_logging                = var.aws_cloudtrail_enable_logging
  include_global_service_events = var.aws_cloudtrail_include_global_service_events
  is_multi_region_trail         = var.aws_cloudtrail_is_multi_region_trail
  is_organization_trail         = var.aws_cloudtrail_is_organization_trail
  kms_key_id                    = var.aws_cloudtrail_kms_key_id
  name                          = var.aws_cloudtrail_name
  s3_bucket_name                = var.aws_cloudtrail_s3_bucket_name
}
