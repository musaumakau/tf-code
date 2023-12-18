output "aws_ecr_repository_arn" {
  value = aws_ecr_repository.ac--aws-ses-email.arn
}

output "aws_ecr_repository_registry_id" {
  value = aws_ecr_repository.ac--aws-ses-email.registry_id
}

output "aws_ecr_repository_repository_url" {
  value = aws_ecr_repository.ac--aws-ses-email.repository_url
}

output "aws_eks_cluster_arn" {
  value = aws_eks_cluster.ac--eks-cluster.arn
}

output "aws_eks_cluster_created_at" {
  value = aws_eks_cluster.ac--eks-cluster.created_at
}

output "aws_eks_cluster_endpoint" {
  value = aws_eks_cluster.ac--eks-cluster.endpoint
}

output "aws_eks_cluster_platform_version" {
  value = aws_eks_cluster.ac--eks-cluster.platform_version
}

output "aws_eks_cluster_status" {
  value = aws_eks_cluster.ac--eks-cluster.status
}

output "aws_eks_node_group_arn" {
  value = aws_eks_node_group.ac--eks-cluster-003A-on-demand_node-grp-1.arn
}

output "aws_eks_node_group_status" {
  value = aws_eks_node_group.ac--eks-cluster-003A-on-demand_node-grp-1.status
}
