resource "aws_cloudfront_cache_policy" "ac--4135ea2d-6df8-44a3-9df3-4b5a84be39ad" {
  comment     = "Policy with caching disabled"
  default_ttl = 0
  max_ttl     = 0
  min_ttl     = 0
  name        = "Managed-CachingDisabled"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = false
    enable_accept_encoding_gzip   = false

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_cache_policy" "ac--658327ea-f89d-4fab-a63d-7e88639e58f6" {
  comment     = "Policy with caching enabled. Supports Gzip and Brotli compression."
  default_ttl = 86400
  max_ttl     = 31536000
  min_ttl     = 1
  name        = "Managed-CachingOptimized"

  parameters_in_cache_key_and_forwarded_to_origin {
    cookies_config {
      cookie_behavior = "none"
    }

    enable_accept_encoding_brotli = true
    enable_accept_encoding_gzip   = true

    headers_config {
      header_behavior = "none"
    }

    query_strings_config {
      query_string_behavior = "none"
    }
  }
}

resource "aws_cloudfront_distribution" "ac--E1DUJTCJ5XZ0L5" {
  aliases               = ["solv-preview.prod.solv.co.ke"]
  comment               = "solv-preview.prod.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["GET", "HEAD", "OPTIONS"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "solv-preview.prod.solv.co.ke"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "solv-preview.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "solv-preview.prod.solv.co.ke"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/5ae68e6f-8ecb-4616-8770-a68c95f31bc7"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

resource "aws_cloudfront_distribution" "ac--E1PXEJD82N9BRM" {
  aliases               = ["prod-api.prod.solv.co.ke"]
  comment               = "prod-api.prod.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    origin_request_policy_id    = "216adef6-5c7f-47e4-b989-5492eafa07d3"
    smooth_streaming            = false
    target_origin_id            = "4t79rwsi0m"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "https-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "d-984cpsoeda.execute-api.eu-west-2.amazonaws.com"
    origin_id        = "4t79rwsi0m"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/5ae68e6f-8ecb-4616-8770-a68c95f31bc7"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E1T7X2BKHSN5HV" {
  aliases               = ["scf-anchor.solv.co.ke"]
  comment               = "scf-anchor.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E2IQ1KB0IS7G52" {
  aliases               = ["scf-fi.solv.co.ke"]
  comment               = "scf-fi.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-fi.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-fi.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-fi.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E2LVO2EL0IWF6F" {
  aliases = ["solv.co.ke"]
  comment = "solv.prod.solv.co.ke"

  custom_error_response {
    error_caching_min_ttl = 10
    error_code            = 404
    response_code         = 200
    response_page_path    = "/index.html"
  }

  default_cache_behavior {
    allowed_methods             = ["GET", "HEAD"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "solv.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "solv.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "solv.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/9b24c8ad-355c-4171-bf44-1a3f03c9212c"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }
}

resource "aws_cloudfront_distribution" "ac--E2WBMAKUMDRYYD" {
  aliases               = ["scf-onboard.solv.co.ke"]
  comment               = "scf-onboard.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-onboard.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-onboard.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-onboard.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E3DYD00LLG0DC8" {
  aliases               = ["scf-admin.solv.co.ke"]
  comment               = "scf-admin.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-admin.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-admin.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-admin.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E3H682TP0TU18I" {
  aliases               = ["scf-dealer.solv.co.ke"]
  comment               = "scf-dealer.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-dealer.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-dealer.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-dealer.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E3ZC7IGN7QFMH" {
  aliases               = ["scf-master-anchor.solv.co.ke"]
  comment               = "scf-master-anchor.solv.co.ke"

  default_cache_behavior {
    allowed_methods             = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "scf-master-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "scf-master-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
    origin_id        = "scf-master-anchor.prod.solv.co.ke.s3-website.eu-west-2.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/138ad4bb-5baa-4cb8-b29b-4f8d4baea064"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}

resource "aws_cloudfront_distribution" "ac--E47AN0NXSMUPP" {
  aliases               = ["s3pdf-kenya.prod.solv.co.ke"]
  comment               = "Craftsilicon PDF document"

  default_cache_behavior {
    allowed_methods             = ["GET", "HEAD"]
    cache_policy_id             = "658327ea-f89d-4fab-a63d-7e88639e58f6"
    cached_methods              = ["GET", "HEAD"]
    compress                    = true
    default_ttl                 = 0
    max_ttl                     = 0
    min_ttl                     = 0
    smooth_streaming            = false
    target_origin_id            = "aea0e0c63cb8a4a12b912cca7f07d6f6-2086604438.eu-west-2.elb.amazonaws.com"
    viewer_protocol_policy      = "redirect-to-https"
  }

  enabled                = true
  http_version           = "http2and3"
  is_ipv6_enabled        = true

  origin {
    connection_attempts = 3
    connection_timeout  = 10

    custom_origin_config {
      http_port                = 80
      https_port               = 443
      origin_keepalive_timeout = 5
      origin_protocol_policy   = "http-only"
      origin_read_timeout      = 30
      origin_ssl_protocols     = ["TLSv1.2"]
    }

    domain_name      = "aea0e0c63cb8a4a12b912cca7f07d6f6-2086604438.eu-west-2.elb.amazonaws.com"
    origin_id        = "aea0e0c63cb8a4a12b912cca7f07d6f6-2086604438.eu-west-2.elb.amazonaws.com"
  }

  price_class = "PriceClass_All"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {
    acm_certificate_arn            = "arn:aws:acm:us-east-1:766176144542:certificate/5ae68e6f-8ecb-4616-8770-a68c95f31bc7"
    cloudfront_default_certificate = false
    minimum_protocol_version       = "TLSv1.2_2021"
    ssl_support_method             = "sni-only"
  }

  web_acl_id = "arn:aws:wafv2:us-east-1:766176144542:global/webacl/solv_kenya_cloudfront_waf/b65e989a-6e99-465c-bba6-4d58ac028532"
}
