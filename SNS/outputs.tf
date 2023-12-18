output "aws_sns_topic_arn" {
  value = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-MonitoringTopic-002E-fifo.arn
}

output "aws_sns_topic_owner" {
  value = aws_sns_topic.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-MonitoringTopic-002E-fifo.owner
}

output "aws_sns_topic_subscription_arn" {
  value = aws_sns_topic_subscription.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts-003A-a3d51c83-f817-4cb5-870d-7845216cc892.arn
}

output "aws_sns_topic_subscription_owner_id" {
  value = aws_sns_topic_subscription.ac--arn-003A-aws-003A-sns-003A-eu-west-2-003A-766176144542-003A-FreshserviceAlerts-003A-a3d51c83-f817-4cb5-870d-7845216cc892.owner_id
}
