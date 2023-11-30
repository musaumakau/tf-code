resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms" {
  application_success_feedback_sample_rate = 0
  content_based_deduplication              = false
  display_name                             = " CISAlarms"
  fifo_topic                               = false
  firehose_success_feedback_sample_rate    = 0
  http_success_feedback_sample_rate        = 0
  kms_master_key_id                        = "alias/aws/sns"
  lambda_success_feedback_sample_rate      = 0
  name                                     = "CISAlarms"

  policy = <<POLICY
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

  signature_version                = 0
  sqs_success_feedback_sample_rate = 0
  tracing_config                   = "PassThrough"
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic" {
  application_success_feedback_sample_rate = 0
  content_based_deduplication              = false
  fifo_topic                               = false
  firehose_success_feedback_sample_rate    = 0
  http_success_feedback_sample_rate        = 0
  kms_master_key_id                        = "alias/aws/sns"
  lambda_success_feedback_sample_rate      = 0
  name                                     = "Default_CloudWatch_Alarms_Topic"

  policy = <<POLICY
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
      "Resource": "arn:aws:sns:eu-west-2:766176144542:Default_CloudWatch_Alarms_Topic",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  signature_version                = 0
  sqs_success_feedback_sample_rate = 0
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts" {
  application_success_feedback_sample_rate = 0
  content_based_deduplication              = false
  fifo_topic                               = false
  firehose_success_feedback_sample_rate    = 0
  http_success_feedback_sample_rate        = 0
  lambda_success_feedback_sample_rate      = 0
  name                                     = "FreshserviceAlerts"

  policy = <<POLICY
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
      "Resource": "arn:aws:sns:eu-west-2:766176144542:FreshserviceAlerts",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  signature_version                = 0
  sqs_success_feedback_sample_rate = 0
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-MonitoringTopic-002E-fifo" {
  application_success_feedback_sample_rate = 0
  content_based_deduplication              = false
  fifo_topic                               = true
  firehose_success_feedback_sample_rate    = 0
  http_success_feedback_sample_rate        = 0
  kms_master_key_id                        = "alias/aws/sns"
  lambda_success_feedback_sample_rate      = 0
  name                                     = "MonitoringTopic.fifo"

  policy = <<POLICY
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
      "Resource": "arn:aws:sns:eu-west-2:766176144542:MonitoringTopic.fifo",
      "Sid": "__default_statement_ID"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  signature_version                = 0
  sqs_success_feedback_sample_rate = 0
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms-003A-b7ebdb4a-1e89-4259-85e5-843bfd887c75" {
  endpoint             = "mohamed.elema@solv.co.ke"
  protocol             = "email"
  raw_message_delivery = false
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms.arn
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic-003A-463e8126-b962-48ed-8976-1cb7029080da" {
  endpoint             = "margaret.cherono@solv.co.ke"
  protocol             = "email"
  raw_message_delivery = false
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic.arn
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts-003A-a3d51c83-f817-4cb5-870d-7845216cc892" {
  endpoint             = "notify-email-f52d05@solvke.alerts.freshservice.com"
  protocol             = "email"
  raw_message_delivery = false
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts.arn
}
