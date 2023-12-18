variable "aws_sns_topic_application_success_feedback_sample_rate" {
  default = 0
  type    = number
}

variable "aws_sns_topic_content_based_deduplication" {
  default = false
  type    = bool
}

variable "aws_sns_topic_display_name" {
  default = " CISAlarms"
  type    = string
}

variable "aws_sns_topic_fifo_topic" {
  default = false
  type    = bool
}

variable "aws_sns_topic_firehose_success_feedback_sample_rate" {
  default = 0
  type    = number
}

variable "aws_sns_topic_http_success_feedback_sample_rate" {
  default = 0
  type    = number
}

variable "aws_sns_topic_kms_master_key_id" {
  default = "alias/aws/sns"
  type    = string
}

variable "aws_sns_topic_lambda_success_feedback_sample_rate" {
  default = 0
  type    = number
}

variable "aws_sns_topic_name" {
  default = "CISAlarms"
  type    = string
}

variable "aws_sns_topic_policy" {
  default = <<POLICY
{
  "Id": "__default_policy_ID",
  "Statement": [
    {
      "Action": [
        "SNS:GetTopicAttributes",
        "SNS:SetTopicAttributes",
        "SNS:AddPermission",
        "SNS:RemovePermission",
        "SNS:DeleteTopic",
        "SNS:Subscribe",
        "SNS:ListSubscriptionsByTopic",
        "SNS:Publish"
      ],
      "Condition": {
        "StringEquals": {
          "AWS:SourceOwner": "766176144542"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "AWS": "*"
      },
      "Resource": "arn:aws:sns:eu-west-2:766176144542:CISAlarms",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  type = string
}

variable "aws_sns_topic_signature_version" {
  default = 0
  type    = number
}

variable "aws_sns_topic_sqs_success_feedback_sample_rate" {
  default = 0
  type    = number
}

variable "aws_sns_topic_subscription_endpoint" {
  default = "mohamed.elema@solv.co.ke"
  type    = string
}

variable "aws_sns_topic_subscription_protocol" {
  default = "email"
  type    = string
}

variable "aws_sns_topic_subscription_raw_message_delivery" {
  default = false
  type    = bool
}

variable "aws_sns_topic_tracing_config" {
  default = "PassThrough"
  type    = string
}
