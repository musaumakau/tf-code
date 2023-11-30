resource "aws_s3_bucket" "ac--aws-quicksetup-patchpolicy-766176144542-gj7vw" {
  bucket    = "aws-quicksetup-patchpolicy-766176144542-gj7vw"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = 0
    enabled                                = true
    id                                     = "DeleteVersionsOlderThan90Days"

    noncurrent_version_expiration {
      days = 90
    }

    prefix                        = "baseline_overrides.json"
  }

  logging {
    target_bucket = "aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw" {
  bucket    = "aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  lifecycle_rule {
    abort_incomplete_multipart_upload_days = 0
    enabled                                = true

    expiration {
      days                         = 3653
      expired_object_delete_marker = false
    }

    id                            = "MoveToGlacierAfter90Days_DeleteAfter10Years"

    transition {
      days          = 90
      storage_class = "GLACIER_IR"
    }
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  tags = {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--cf-templates-wp5a2kim1a8s-eu-west-2" {
  bucket    = "cf-templates-wp5a2kim1a8s-eu-west-2"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--config-bucket-766176144542" {
  bucket    = "config-bucket-766176144542"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--ecrpermission-devops-newprod-kenya" {
  bucket    = "ecrpermission-devops-newprod-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--inspector-export-result" {
  bucket    = "inspector-export-result"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = false
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--inspector-logs1" {
  bucket    = "inspector-logs1"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--logs-solv-bucket" {
  bucket    = "logs-solv-bucket"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = false
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prd-scf-ke-tf-state" {
  bucket    = "prd-scf-ke-tf-state"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = false
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--processed-files-prod-ke" {
  bucket    = "processed-files-prod-ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-ke-scf-anchor-invoice-ui-upload" {
  bucket    = "prod-ke-scf-anchor-invoice-ui-upload"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-mediastorefile-kenya" {
  bucket    = "prod-mediastorefile-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-scf-fs-listeners-kenya" {
  bucket    = "prod-scf-fs-listeners-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-scf-invoice-file-dump-kenya" {
  bucket    = "prod-scf-invoice-file-dump-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-scf-invoice-reconcilation-kenya" {
  bucket    = "prod-scf-invoice-reconcilation-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-scf-limit-file-dump-kenya" {
  bucket    = "prod-scf-limit-file-dump-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--prod-scf-limit-reconcilation-kenya" {
  bucket    = "prod-scf-limit-reconcilation-kenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--s3-buckets-access-logs-solv-co-ke" {
  bucket    = "s3-buckets-access-logs-solv-co-ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--scf-admin-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-admin.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }


  logging {
    target_bucket = "s3-buckets-access-logs-solv-co-ke"
    target_prefix = "scf-admin"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--scf-anchor-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-anchor.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }


  logging {
    target_bucket = "s3-buckets-access-logs-solv-co-ke"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--scf-dealer-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-dealer.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--scf-fi-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-fi.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--scf-master-anchor-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-master-anchor.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--scf-onboard-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "scf-onboard.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--sftp-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "sftp.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--solv-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "solv.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--solv-ke-lb-access-logs" {
  bucket    = "solv-ke-lb-access-logs"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--solv-preview-002E-prod-002E-solv-002E-co-002E-ke" {
  bucket    = "solv-preview.prod.solv.co.ke"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

  website {
    error_document = "index.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket" "ac--solvezy-ocr-applog-prodkenya" {
  bucket    = "solvezy-ocr-applog-prodkenya"

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = false

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "arn:aws:kms:eu-west-2:766176144542:alias/aws/s3"
        sse_algorithm     = "aws:kms"
      }

      bucket_key_enabled = true
    }
  }

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket_policy" "ac--aws-quicksetup-patchpolicy-766176144542-gj7vw-1" {
  bucket = aws_s3_bucket.ac--aws-quicksetup-patchpolicy-766176144542-gj7vw.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::aws-quicksetup-patchpolicy-766176144542-gj7vw/*\",\"Sid\":\"DenyInsecureTransport\"},{\"Action\":\"s3:GetObject\",\"Condition\":{\"StringNotEquals\":{\"aws:PrincipalTag/QSConfigId-gj7vw\":\"gj7vw\"}},\"Effect\":\"Deny\",\"Principal\":{\"AWS\":\"*\"},\"Resource\":\"arn:aws:s3:::aws-quicksetup-patchpolicy-766176144542-gj7vw/baseline_overrides.json\",\"Sid\":\"DenyAllButPrincipalsWithTag\"},{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"arn:aws:s3:::aws-quicksetup-patchpolicy-766176144542-gj7vw/baseline_overrides.json\",\"Sid\":\"Target\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw-1" {
  bucket = aws_s3_bucket.ac--aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw\",\"arn:aws:s3:::aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw/*\"],\"Sid\":\"DenyInsecureTransport\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:s3:::aws-quicksetup-patchpolicy-766176144542-gj7vw\"},\"StringEquals\":{\"aws:SourceAccount\":\"766176144542\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"logging.s3.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::aws-quicksetup-patchpolicy-access-log-766176144542-bcd8-gj7vw/*\",\"Sid\":\"S3ServerAccessLogsPolicy\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--config-bucket-766176144542-1" {
  bucket = aws_s3_bucket.ac--config-bucket-766176144542.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetBucketAcl\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"766176144542\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-766176144542\",\"Sid\":\"AWSConfigBucketPermissionsCheck\"},{\"Action\":\"s3:ListBucket\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"766176144542\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-766176144542\",\"Sid\":\"AWSConfigBucketExistenceCheck\"},{\"Action\":\"s3:PutObject\",\"Condition\":{\"StringEquals\":{\"AWS:SourceAccount\":\"766176144542\",\"s3:x-amz-acl\":\"bucket-owner-full-control\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"config.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::config-bucket-766176144542/AWSLogs/766176144542/Config/*\",\"Sid\":\"AWSConfigBucketDelivery\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--inspector-export-result-1" {
  bucket = aws_s3_bucket.ac--inspector-export-result.id
  policy = "{\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:PutObjectAcl\",\"s3:AbortMultipartUpload\"],\"Condition\":{\"ArnLike\":{\"aws:SourceArn\":\"arn:aws:inspector2:eu-west-2:766176144542:report/*\"},\"StringEquals\":{\"aws:SourceAccount\":\"766176144542\"}},\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"inspector2.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::inspector-export-result/*\",\"Sid\":\"allow-inspector\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--prod-ke-scf-anchor-invoice-ui-upload-1" {
  bucket = aws_s3_bucket.ac--prod-ke-scf-anchor-invoice-ui-upload.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::prod-ke-scf-anchor-invoice-ui-upload\",\"arn:aws:s3:::prod-ke-scf-anchor-invoice-ui-upload/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--prod-scf-invoice-file-dump-kenya-1" {
  bucket = aws_s3_bucket.ac--prod-scf-invoice-file-dump-kenya.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::prod-scf-invoice-file-dump-kenya\",\"arn:aws:s3:::prod-scf-invoice-file-dump-kenya/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--prod-scf-limit-file-dump-kenya-1" {
  bucket = aws_s3_bucket.ac--prod-scf-limit-file-dump-kenya.id
  policy = "{\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::prod-scf-limit-file-dump-kenya\",\"arn:aws:s3:::prod-scf-limit-file-dump-kenya/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--prod-scf-limit-reconcilation-kenya-1" {
  bucket = aws_s3_bucket.ac--prod-scf-limit-reconcilation-kenya.id
  policy = "{\"Id\":\"S3SSLPolicy\",\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::prod-scf-limit-reconcilation-kenya\",\"arn:aws:s3:::prod-scf-limit-reconcilation-kenya/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--s3-buckets-access-logs-solv-co-ke-1" {
  bucket = aws_s3_bucket.ac--s3-buckets-access-logs-solv-co-ke.id
  policy = "{\"Id\":\"S3-Console-Auto-Gen-Policy-1692105506364\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"logging.s3.amazonaws.com\"},\"Resource\":\"arn:aws:s3:::s3-buckets-access-logs-solv-co-ke/*\",\"Sid\":\"S3PolicyStmt-DO-NOT-MODIFY-1692105506123\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--sftp-002E-prod-002E-solv-002E-co-002E-ke-1" {
  bucket = aws_s3_bucket.ac--sftp-002E-prod-002E-solv-002E-co-002E-ke.id
  policy = "{\"Id\":\"ExamplePolicy\",\"Statement\":[{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::sftp.prod.solv.co.ke\",\"arn:aws:s3:::sftp.prod.solv.co.ke/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--solv-002E-prod-002E-solv-002E-co-002E-ke-1" {
  bucket = aws_s3_bucket.ac--solv-002E-prod-002E-solv-002E-co-002E-ke.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::solv.prod.solv.co.ke/*\",\"Sid\":\"PublicReadGetObject\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--solv-ke-lb-access-logs-1" {
  bucket = aws_s3_bucket.ac--solv-ke-lb-access-logs.id
  policy = "{\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Principal\":{\"AWS\":\"arn:aws:iam::766176144542:root\"},\"Resource\":\"arn:aws:s3:::solv-ke-lb-access-logs/*/AWSLogs/766176144542/*\"}],\"Version\":\"2012-10-17\"}"
}

resource "aws_s3_bucket_policy" "ac--solv-preview-002E-prod-002E-solv-002E-co-002E-ke-1" {
  bucket = aws_s3_bucket.ac--solv-preview-002E-prod-002E-solv-002E-co-002E-ke.id
  policy = "{\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Principal\":\"*\",\"Resource\":\"arn:aws:s3:::solv-preview.prod.solv.co.ke/*\",\"Sid\":\"PublicReadGetObject\"},{\"Action\":\"s3:*\",\"Condition\":{\"Bool\":{\"aws:SecureTransport\":\"false\"}},\"Effect\":\"Deny\",\"Principal\":\"*\",\"Resource\":[\"arn:aws:s3:::solv-preview.prod.solv.co.ke\",\"arn:aws:s3:::solv-preview.prod.solv.co.ke/*\"],\"Sid\":\"AllowSSLRequestsOnly\"}],\"Version\":\"2012-10-17\"}"
}
