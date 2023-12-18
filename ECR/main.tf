resource "aws_ecr_repository" "ac--aws-s3-file-upload" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--aws-ses-email" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = true
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--batch-job" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--cognito-auth" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--common-auth" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--craftsilicon-financial" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--creditinfo-credit-report" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--dealer-profile" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--document-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--document-management" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--finstatement-ocr" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--firebase-api" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--focusmobile-sms" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--general-ledger" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--integration-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--mongodb-adapter" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--mpf-buisness-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--mpf-business-certificate-retrieval" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--mpf-business-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--mpf-individual-verification" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--notification-framework" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--ocr" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--otp" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--payment-status" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}

resource "aws_ecr_repository" "ac--pdf-adapter" {
  encryption_configuration {
    encryption_type = "AES256"
  }

  image_scanning_configuration {
    scan_on_push = false
  }

  image_tag_mutability = var.aws_ecr_repository_image_tag_mutability
  name                 = var.aws_ecr_repository_name
}
