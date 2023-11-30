resource "aws_eip" "ac--eipalloc-0029df3dfc8c10da3" {
  instance             = "i-08e2757a091b44f53"
  network_border_group = "eu-west-2"
  network_interface    = "eni-0f4e897bfc0d09dc0"
  public_ipv4_pool     = "amazon"

  tags = {
    Name = "public-backup-bastion-ip"
  }

  vpc = true
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
