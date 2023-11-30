resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-eu-west-2-003A-766176144542-003A-certificate-002F-61cc4da6-9c33-4eb5-8f91-cbfc389b4b50" {
  domain_name   = "*.prod.solv.co.ke"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.prod.solv.co.ke"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-eu-west-2-003A-766176144542-003A-certificate-002F-935437e4-2cba-49ab-90ed-00aa8e18545a" {
  domain_name   = "jenkins.prod.solv.co.ke"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["jenkins.prod.solv.co.ke"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-eu-west-2-003A-766176144542-003A-certificate-002F-99369ce8-843d-4837-87e9-0fc652e88f39" {
  domain_name   = "*.solv.co.ke"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["*.prod.solv.co.ke", "*.solv.co.ke"]
  validation_method         = "DNS"
}

resource "aws_acm_certificate" "ac--arn-003A-aws-003A-acm-003A-eu-west-2-003A-766176144542-003A-certificate-002F-f086dc69-0fef-4898-b2bb-fa2257a59440" {
  domain_name   = "solv.co.ke"
  key_algorithm = "RSA_2048"

  options {
    certificate_transparency_logging_preference = "ENABLED"
  }

  subject_alternative_names = ["solv.co.ke"]
  validation_method         = "DNS"
}

resource "aws_vpn_gateway" "ac--vgw-027a98b9c7af0df2a" {
  amazon_side_asn = "64512"

  tags = {
    Name = "Aujas-Qradar-VPG"
  }
}
