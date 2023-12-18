variable "aws_ebs_volume_availability_zone" {
  default = "eu-west-2a"
  type    = string
}

variable "aws_ebs_volume_encrypted" {
  default = true
  type    = bool
}

variable "aws_ebs_volume_iops" {
  default = 3000
  type    = number
}

variable "aws_ebs_volume_kms_key_id" {
  default = "arn:aws:kms:eu-west-2:766176144542:key/2d70f0ba-a13f-4642-883a-48f115ba9106"
  type    = string
}

variable "aws_ebs_volume_multi_attach_enabled" {
  default = false
  type    = bool
}

variable "aws_ebs_volume_size" {
  default = 768
  type    = number
}

variable "aws_ebs_volume_snapshot_id" {
  default = "snap-0c496e8c72b2bd4f4"
  type    = string
}

variable "aws_ebs_volume_throughput" {
  default = 125
  type    = number
}

variable "aws_ebs_volume_type" {
  default = "gp3"
  type    = string
}
