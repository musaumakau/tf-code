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

resource "aws_eks_cluster" "ac--eks-cluster" {

  kubernetes_network_config {
    ip_family         = "ipv4"
    service_ipv4_cidr = "172.20.0.0/16"
  }

  name           = var.aws_eks_cluster_name
  role_arn       = var.aws_eks_cluster_role_arn
  version        = var.aws_eks_cluster_version

  vpc_config {
    endpoint_private_access = true
    endpoint_public_access  = false
    subnet_ids              = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  }
}

resource "aws_eks_node_group" "ac--eks-cluster-003A-on-demand_node-grp-1" {
  ami_type        = var.aws_eks_node_group_ami_type
  capacity_type   = var.aws_eks_node_group_capacity_type
  cluster_name    = var.aws_eks_node_group_cluster_name
  disk_size       = var.aws_eks_node_group_disk_size
  instance_types  = var.aws_eks_node_group_instance_types
  node_group_name = var.aws_eks_node_group_node_group_name
  node_role_arn   = var.aws_eks_node_group_node_role_arn
  release_version = var.aws_eks_node_group_release_version

  scaling_config {
    desired_size = 10
    max_size     = 11
    min_size     = 2
  }

  subnet_ids = var.aws_eks_node_group_subnet_ids

  update_config {
    max_unavailable = 1
  }

  version = var.aws_eks_node_group_version
}
