resource "aws_s3_bucket" "ac--aws-quicksetup-patchpolicy-766176144542-gj7vw" {
  bucket    = var.aws_s3_bucket_bucket

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

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

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

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  tags = var.aws_s3_bucket_tags

  versioning {
    enabled    = true
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--cf-templates-wp5a2kim1a8s-eu-west-2" {
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }

      bucket_key_enabled = false
    }
  }

  versioning {
    enabled    = false
    mfa_delete = false
  }

}

resource "aws_s3_bucket" "ac--processed-files-prod-ke" {
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }


  logging {
    target_bucket = "s3-buckets-access-logs-solv-co-ke"
    target_prefix = "scf-admin"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }


  logging {
    target_bucket = "s3-buckets-access-logs-solv-co-ke"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
  bucket    = var.aws_s3_bucket_bucket

  grant {
    id          = "1633c63a8b66ce3230dfd23d3c2e39a5b3eb7479de5f06c63214f2aec72c4683"
    permissions = ["FULL_CONTROL"]
    type        = "CanonicalUser"
  }

  object_lock_enabled       = var.aws_s3_bucket_object_lock_enabled

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
