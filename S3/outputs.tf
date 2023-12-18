output "aws_s3_bucket_arn" {
  value = aws_s3_bucket.ac--logs-solv-bucket.arn
}

output "aws_s3_bucket_bucket_domain_name" {
  value = aws_s3_bucket.ac--logs-solv-bucket.bucket_domain_name
}

output "aws_s3_bucket_bucket_regional_domain_name" {
  value = aws_s3_bucket.ac--logs-solv-bucket.bucket_regional_domain_name
}

output "aws_s3_bucket_hosted_zone_id" {
  value = aws_s3_bucket.ac--logs-solv-bucket.hosted_zone_id
}

output "aws_s3_bucket_region" {
  value = aws_s3_bucket.ac--logs-solv-bucket.region
}

output "aws_s3_bucket_website_domain" {
  value = aws_s3_bucket.ac--scf-anchor-002E-prod-002E-solv-002E-co-002E-ke.website_domain
}

output "aws_s3_bucket_website_endpoint" {
  value = aws_s3_bucket.ac--scf-anchor-002E-prod-002E-solv-002E-co-002E-ke.website_endpoint
}
