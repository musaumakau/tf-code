variable "aws_ecr_repository_image_tag_mutability" {
  default = "MUTABLE"
  type    = string
}

variable "aws_ecr_repository_name" {
  default = "document-framework"
  type    = string
}

variable "aws_eks_cluster_name" {
  default = "eks-cluster"
  type    = string
}

variable "aws_eks_cluster_role_arn" {
  default = "arn:aws:iam::766176144542:role/scf-ke-prod-network-stack-vpc-EKSclusterRole-Z4KJKQRYRONT"
  type    = string
}

variable "aws_eks_cluster_version" {
  default = "1.28"
  type    = string
}

variable "aws_eks_node_group_ami_type" {
  default = "AL2_x86_64"
  type    = string
}

variable "aws_eks_node_group_capacity_type" {
  default = "ON_DEMAND"
  type    = string
}

variable "aws_eks_node_group_cluster_name" {
  default = "eks-cluster"
  type    = string
}

variable "aws_eks_node_group_disk_size" {
  default = 20
  type    = number
}

variable "aws_eks_node_group_instance_types" {
  default = ["t3.large"]
  type    = list(string)
}

variable "aws_eks_node_group_node_group_name" {
  default = "on-demand_node-grp-1"
  type    = string
}

variable "aws_eks_node_group_node_role_arn" {
  default = "arn:aws:iam::766176144542:role/scf-ke-prod-network-stack-EKSnodegroupclusterRole-EH53YJDE8GU0"
  type    = string
}

variable "aws_eks_node_group_release_version" {
  default = "1.28.3-20231106"
  type    = string
}

variable "aws_eks_node_group_subnet_ids" {
  default = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  type    = set(string)
}

variable "aws_eks_node_group_version" {
  default = "1.28"
  type    = string
}
