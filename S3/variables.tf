variable "aws_s3_bucket_bucket" {
  default = "processed-files-prod-ke"
  type    = string
}

variable "aws_s3_bucket_object_lock_enabled" {
  default = false
  type    = bool
}

variable "aws_s3_bucket_tags" {
  default {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  type = map(string)
}
