variable "aws_cloudfront_cache_policy_comment" {
  default = "Policy with caching enabled. Supports Gzip and Brotli compression."
  type    = string
}

variable "aws_cloudfront_cache_policy_default_ttl" {
  default = 86400
  type    = number
}

variable "aws_cloudfront_cache_policy_max_ttl" {
  default = 31536000
  type    = number
}

variable "aws_cloudfront_cache_policy_min_ttl" {
  default = 1
  type    = number
}

variable "aws_cloudfront_cache_policy_name" {
  default = "Managed-CachingOptimized"
  type    = string
}

variable "aws_cloudfront_distribution_aliases" {
  default = ["scf-anchor.solv.co.ke"]
  type    = set(string)
}

variable "aws_cloudfront_distribution_comment" {
  default = "scf-anchor.solv.co.ke"
  type    = string
}

variable "aws_cloudfront_distribution_enabled" {
  default = true
  type    = bool
}

variable "aws_cloudfront_distribution_http_version" {
  default = "http2and3"
  type    = string
}

variable "aws_cloudfront_distribution_is_ipv6_enabled" {
  default = true
  type    = bool
}

variable "aws_cloudfront_distribution_price_class" {
  default = "PriceClass_All"
  type    = string
}

variable "aws_cloudfront_distribution_web_acl_id" {
  default = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
  type    = string
}
