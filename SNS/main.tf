resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms" {
  application_success_feedback_sample_rate = var.aws_sns_topic_application_success_feedback_sample_rate
  content_based_deduplication              = var.aws_sns_topic_content_based_deduplication
  display_name                             = var.aws_sns_topic_display_name
  fifo_topic                               = var.aws_sns_topic_fifo_topic
  firehose_success_feedback_sample_rate    = var.aws_sns_topic_firehose_success_feedback_sample_rate
  http_success_feedback_sample_rate        = var.aws_sns_topic_http_success_feedback_sample_rate
  kms_master_key_id                        = var.aws_sns_topic_kms_master_key_id
  lambda_success_feedback_sample_rate      = var.aws_sns_topic_lambda_success_feedback_sample_rate
  name                                     = var.aws_sns_topic_name
  policy                                   = var.aws_sns_topic_policy
  signature_version                        = var.aws_sns_topic_signature_version
  sqs_success_feedback_sample_rate         = var.aws_sns_topic_sqs_success_feedback_sample_rate
  tracing_config                           = var.aws_sns_topic_tracing_config
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic" {
  application_success_feedback_sample_rate = var.aws_sns_topic_application_success_feedback_sample_rate
  content_based_deduplication              = var.aws_sns_topic_content_based_deduplication
  fifo_topic                               = var.aws_sns_topic_fifo_topic
  firehose_success_feedback_sample_rate    = var.aws_sns_topic_firehose_success_feedback_sample_rate
  http_success_feedback_sample_rate        = var.aws_sns_topic_http_success_feedback_sample_rate
  kms_master_key_id                        = var.aws_sns_topic_kms_master_key_id
  lambda_success_feedback_sample_rate      = var.aws_sns_topic_lambda_success_feedback_sample_rate
  name                                     = var.aws_sns_topic_name
  policy                                   = var.aws_sns_topic_policy
  signature_version                        = var.aws_sns_topic_signature_version
  sqs_success_feedback_sample_rate         = var.aws_sns_topic_sqs_success_feedback_sample_rate
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts" {
  application_success_feedback_sample_rate = var.aws_sns_topic_application_success_feedback_sample_rate
  content_based_deduplication              = var.aws_sns_topic_content_based_deduplication
  fifo_topic                               = var.aws_sns_topic_fifo_topic
  firehose_success_feedback_sample_rate    = var.aws_sns_topic_firehose_success_feedback_sample_rate
  http_success_feedback_sample_rate        = var.aws_sns_topic_http_success_feedback_sample_rate
  lambda_success_feedback_sample_rate      = var.aws_sns_topic_lambda_success_feedback_sample_rate
  name                                     = var.aws_sns_topic_name
  policy                                   = var.aws_sns_topic_policy
  signature_version                        = var.aws_sns_topic_signature_version
  sqs_success_feedback_sample_rate         = var.aws_sns_topic_sqs_success_feedback_sample_rate
}

resource "aws_sns_topic" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-MonitoringTopic-002E-fifo" {
  application_success_feedback_sample_rate = var.aws_sns_topic_application_success_feedback_sample_rate
  content_based_deduplication              = var.aws_sns_topic_content_based_deduplication
  fifo_topic                               = var.aws_sns_topic_fifo_topic
  firehose_success_feedback_sample_rate    = var.aws_sns_topic_firehose_success_feedback_sample_rate
  http_success_feedback_sample_rate        = var.aws_sns_topic_http_success_feedback_sample_rate
  kms_master_key_id                        = var.aws_sns_topic_kms_master_key_id
  lambda_success_feedback_sample_rate      = var.aws_sns_topic_lambda_success_feedback_sample_rate
  name                                     = var.aws_sns_topic_name
  policy                                   = var.aws_sns_topic_policy
  signature_version                        = var.aws_sns_topic_signature_version
  sqs_success_feedback_sample_rate         = var.aws_sns_topic_sqs_success_feedback_sample_rate
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms-003A-b7ebdb4a-1e89-4259-85e5-843bfd887c75" {
  endpoint             = var.aws_sns_topic_subscription_endpoint
  protocol             = var.aws_sns_topic_subscription_protocol
  raw_message_delivery = var.aws_sns_topic_subscription_raw_message_delivery
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-CISAlarms.arn
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic-003A-463e8126-b962-48ed-8976-1cb7029080da" {
  endpoint             = var.aws_sns_topic_subscription_endpoint
  protocol             = var.aws_sns_topic_subscription_protocol
  raw_message_delivery = var.aws_sns_topic_subscription_raw_message_delivery
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-Default_CloudWatch_Alarms_Topic.arn
}

resource "aws_sns_topic_subscription" "ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts-003A-a3d51c83-f817-4cb5-870d-7845216cc892" {
  endpoint             = var.aws_sns_topic_subscription_endpoint
  protocol             = var.aws_sns_topic_subscription_protocol
  raw_message_delivery = var.aws_sns_topic_subscription_raw_message_delivery
  topic_arn            = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts.arn
}
