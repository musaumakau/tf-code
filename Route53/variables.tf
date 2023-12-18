variable "aws_route53_record_name" {
  default = "documentdb.prod.solv.co.ke"
  type    = string
}

variable "aws_route53_record_type" {
  default = "CNAME"
  type    = string
}

variable "aws_route53_record_zone_id" {
  default = "Z06644081D5AL1S4JCAB"
  type    = string
}
