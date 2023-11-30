resource "aws_ecr_lifecycle_policy" "ac--aws-s3-file-upload-1" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "Cleanup repo",
      "rulePriority": 1,
      "selection": {
        "countNumber": 8,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "aws-s3-file-upload"
}

resource "aws_ecr_lifecycle_policy" "ac--aws-ses-email-1" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "Cleanup repo",
      "rulePriority": 1,
      "selection": {
        "countNumber": 8,
        "countType": "imageCountMoreThan",
        "tagStatus": "any"
      }
    }
  ]
}
POLICY

  repository = "aws-ses-email"
}

resource "aws_ecr_repository" "ac--aws-s3-file-upload" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "aws-s3-file-upload"
}

resource "aws_ecr_repository" "ac--aws-ses-email" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = "IMMUTABLE"
  name                 = "aws-ses-email"
}

resource "aws_ecr_repository" "ac--batch-job" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "batch-job"
}

resource "aws_ecr_repository" "ac--cognito-auth" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "cognito-auth"
}

resource "aws_ecr_repository" "ac--common-auth" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "common-auth"
}

resource "aws_ecr_repository" "ac--craftsilicon-financial" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "craftsilicon-financial"
}

resource "aws_ecr_repository" "ac--creditinfo-credit-report" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "creditinfo-credit-report"
}

resource "aws_ecr_repository" "ac--dealer-profile" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "dealer-profile"
}

resource "aws_ecr_repository" "ac--document-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "document-framework"
}

resource "aws_ecr_repository" "ac--document-management" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "document-management"
}

resource "aws_ecr_repository" "ac--finstatement-ocr" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "finstatement-ocr"
}

resource "aws_ecr_repository" "ac--firebase-api" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "firebase-api"
}

resource "aws_ecr_repository" "ac--focusmobile-sms" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "focusmobile-sms"
}

resource "aws_ecr_repository" "ac--general-ledger" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "general-ledger"
}

resource "aws_ecr_repository" "ac--integration-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "integration-framework"
}

resource "aws_ecr_repository" "ac--mongodb-adapter" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mongodb-adapter"
}

resource "aws_ecr_repository" "ac--mpf-buisness-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mpf-buisness-verification"
}

resource "aws_ecr_repository" "ac--mpf-business-certificate-retrieval" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mpf-business-certificate-retrieval"
}

resource "aws_ecr_repository" "ac--mpf-business-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mpf-business-verification"
}

resource "aws_ecr_repository" "ac--mpf-individual-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "mpf-individual-verification"
}

resource "aws_ecr_repository" "ac--notification-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "notification-framework"
}

resource "aws_ecr_repository" "ac--ocr" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "ocr"
}

resource "aws_ecr_repository" "ac--otp" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "otp"
}

resource "aws_ecr_repository" "ac--payment-status" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "payment-status"
}

resource "aws_ecr_repository" "ac--pdf-adapter" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "pdf-adapter"
}

resource "aws_ecr_repository" "ac--pdf-document" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "pdf-document"
}

resource "aws_ecr_repository" "ac--pdf-service" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "pdf-service"
}

resource "aws_ecr_repository" "ac--refinitiv-screening" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "refinitiv-screening"
}

resource "aws_ecr_repository" "ac--scf-accesscontrol" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-accesscontrol"
}

resource "aws_ecr_repository" "ac--scf-api-routing" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-api-routing"
}

resource "aws_ecr_repository" "ac--scf-bank-statement" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-bank-statement"
}

resource "aws_ecr_repository" "ac--scf-core-user-management" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-core-user-management"
}

resource "aws_ecr_repository" "ac--scf-credit-limit" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-credit-limit"
}

resource "aws_ecr_repository" "ac--scf-customer" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-customer"
}

resource "aws_ecr_repository" "ac--scf-enhancement" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-enhancement"
}

resource "aws_ecr_repository" "ac--scf-fi" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-fi"
}

resource "aws_ecr_repository" "ac--scf-finance" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-finance"
}

resource "aws_ecr_repository" "ac--scf-invoice" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-invoice"
}

resource "aws_ecr_repository" "ac--scf-notification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-notification"
}

resource "aws_ecr_repository" "ac--scf-onboarding" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-onboarding"
}

resource "aws_ecr_repository" "ac--scf-payment" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-payment"
}

resource "aws_ecr_repository" "ac--scf-profile" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-profile"
}

resource "aws_ecr_repository" "ac--scf-reports" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-reports"
}

resource "aws_ecr_repository" "ac--scf-solv-customer" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-solv-customer"
}

resource "aws_ecr_repository" "ac--scf-template" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "scf-template"
}

resource "aws_ecr_repository" "ac--sftp-connector" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "sftp-connector"
}

resource "aws_ecr_repository" "ac--sftp-fi" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "sftp-fi"
}

resource "aws_ecr_repository" "ac--solv-score-dealer-profile" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "solv-score-dealer-profile"
}

resource "aws_ecr_repository" "ac--solv-score-dealer-profile-publisher" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "solv-score-dealer-profile-publisher"
}

resource "aws_ecr_repository" "ac--template-engine" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = "MUTABLE"
  name                 = "template-engine"
}

resource "aws_ecr_repository_policy" "ac--aws-s3-file-upload-2" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--aws-s3-file-upload.name
}

resource "aws_ecr_repository_policy" "ac--aws-ses-email-2" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--aws-ses-email.name
}

resource "aws_ecr_repository_policy" "ac--batch-job-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--batch-job.name
}

resource "aws_ecr_repository_policy" "ac--cognito-auth-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--cognito-auth.name
}

resource "aws_ecr_repository_policy" "ac--common-auth-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--common-auth.name
}

resource "aws_ecr_repository_policy" "ac--craftsilicon-financial-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--craftsilicon-financial.name
}

resource "aws_ecr_repository_policy" "ac--creditinfo-credit-report-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--creditinfo-credit-report.name
}

resource "aws_ecr_repository_policy" "ac--dealer-profile-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--dealer-profile.name
}

resource "aws_ecr_repository_policy" "ac--document-framework-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--document-framework.name
}

resource "aws_ecr_repository_policy" "ac--document-management-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--document-management.name
}

resource "aws_ecr_repository_policy" "ac--finstatement-ocr-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--finstatement-ocr.name
}

resource "aws_ecr_repository_policy" "ac--firebase-api-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--firebase-api.name
}

resource "aws_ecr_repository_policy" "ac--focusmobile-sms-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--focusmobile-sms.name
}

resource "aws_ecr_repository_policy" "ac--general-ledger-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--general-ledger.name
}

resource "aws_ecr_repository_policy" "ac--integration-framework-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--integration-framework.name
}

resource "aws_ecr_repository_policy" "ac--mongodb-adapter-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--mongodb-adapter.name
}

resource "aws_ecr_repository_policy" "ac--mpf-buisness-verification-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--mpf-buisness-verification.name
}

resource "aws_ecr_repository_policy" "ac--mpf-business-certificate-retrieval-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--mpf-business-certificate-retrieval.name
}

resource "aws_ecr_repository_policy" "ac--mpf-business-verification-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--mpf-business-verification.name
}

resource "aws_ecr_repository_policy" "ac--mpf-individual-verification-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--mpf-individual-verification.name
}

resource "aws_ecr_repository_policy" "ac--notification-framework-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--notification-framework.name
}

resource "aws_ecr_repository_policy" "ac--ocr-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--ocr.name
}

resource "aws_ecr_repository_policy" "ac--otp-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--otp.name
}

resource "aws_ecr_repository_policy" "ac--payment-status-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--payment-status.name
}

resource "aws_ecr_repository_policy" "ac--pdf-adapter-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--pdf-adapter.name
}

resource "aws_ecr_repository_policy" "ac--pdf-document-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--pdf-document.name
}

resource "aws_ecr_repository_policy" "ac--pdf-service-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--pdf-service.name
}

resource "aws_ecr_repository_policy" "ac--refinitiv-screening-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--refinitiv-screening.name
}

resource "aws_ecr_repository_policy" "ac--scf-accesscontrol-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-accesscontrol.name
}

resource "aws_ecr_repository_policy" "ac--scf-api-routing-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-api-routing.name
}

resource "aws_ecr_repository_policy" "ac--scf-bank-statement-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-bank-statement.name
}

resource "aws_ecr_repository_policy" "ac--scf-core-user-management-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-core-user-management.name
}

resource "aws_ecr_repository_policy" "ac--scf-credit-limit-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-credit-limit.name
}

resource "aws_ecr_repository_policy" "ac--scf-customer-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-customer.name
}

resource "aws_ecr_repository_policy" "ac--scf-enhancement-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-enhancement.name
}

resource "aws_ecr_repository_policy" "ac--scf-fi-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-fi.name
}

resource "aws_ecr_repository_policy" "ac--scf-finance-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-finance.name
}

resource "aws_ecr_repository_policy" "ac--scf-invoice-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-invoice.name
}

resource "aws_ecr_repository_policy" "ac--scf-notification-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-notification.name
}

resource "aws_ecr_repository_policy" "ac--scf-onboarding-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-onboarding.name
}

resource "aws_ecr_repository_policy" "ac--scf-payment-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-payment.name
}

resource "aws_ecr_repository_policy" "ac--scf-profile-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-profile.name
}

resource "aws_ecr_repository_policy" "ac--scf-reports-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-reports.name
}

resource "aws_ecr_repository_policy" "ac--scf-solv-customer-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-solv-customer.name
}

resource "aws_ecr_repository_policy" "ac--scf-template-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--scf-template.name
}

resource "aws_ecr_repository_policy" "ac--sftp-connector-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--sftp-connector.name
}

resource "aws_ecr_repository_policy" "ac--sftp-fi-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--sftp-fi.name
}

resource "aws_ecr_repository_policy" "ac--solv-score-dealer-profile-1" {
  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ecr:BatchCheckLayerAvailability",
        "ecr:BatchDeleteImage",
        "ecr:BatchGetImage",
        "ecr:CompleteLayerUpload",
        "ecr:DeleteLifecyclePolicy",
        "ecr:DeleteRepository",
        "ecr:DeleteRepositoryPolicy",
        "ecr:DescribeImages",
        "ecr:DescribeRepositories",
        "ecr:GetDownloadUrlForLayer",
        "ecr:GetLifecyclePolicy",
        "ecr:GetLifecyclePolicyPreview",
        "ecr:GetRepositoryPolicy",
        "ecr:InitiateLayerUpload",
        "ecr:ListImages",
        "ecr:PutImage",
        "ecr:PutLifecyclePolicy",
        "ecr:SetRepositoryPolicy",
        "ecr:StartLifecyclePolicyPreview",
        "ecr:UploadLayerPart"
      ],
      "Effect": "Allow",
      "Principal": "*",
      "Sid": "allowaccesstoecrss"
    }
  ],
  "Version": "2008-10-17"
}
POLICY

  repository = aws_ecr_repository.ac--solv-score-dealer-profile.name
}

resource "aws_eks_cluster" "ac--eks-cluster" {

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
  }

  name           = "eks-cluster"
  role_arn       = "arn:aws:iam::766176144542:role/scf-ke-prod-network-stack-vpc-EKSclusterRole-Z4KJKQRYRONT"
  version        = "1.28"

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = false
    subnet_ids              = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  }
}
