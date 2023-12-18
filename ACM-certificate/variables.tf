variable "aws_acm_certificate_domain_name" {
  default = "*.prod.solv.co.ke"
  type    = string
}

variable "aws_acm_certificate_key_algorithm" {
  default = "RSA_2048"
  type    = string
}

variable "aws_acm_certificate_subject_alternative_names" {
  default = ["*.prod.solv.co.ke"]
  type    = set(string)
}

variable "aws_acm_certificate_validation_method" {
  default = "DNS"
  type    = string
}
