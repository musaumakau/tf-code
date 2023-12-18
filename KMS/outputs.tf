output "aws_kms_alias_arn" {
  value = aws_kms_alias.ac--alias-002F-inspector2.arn
}

output "aws_kms_alias_target_key_arn" {
  value = aws_kms_alias.ac--alias-002F-inspector2.target_key_arn
}

output "aws_kms_key_arn" {
  value = aws_kms_key.ac--377cd5e8-28af-4800-85f6-fd07e485e156.arn
}

output "aws_kms_key_key_id" {
  value = aws_kms_key.ac--377cd5e8-28af-4800-85f6-fd07e485e156.key_id
}
