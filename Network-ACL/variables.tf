variable "aws_network_acl_subnet_ids" {
  default = ["subnet-05a7709f7ea1ab238", "subnet-078af4ec8efe88431", "subnet-087e5c32cbaca1cd8", "subnet-0a7061207da3fd3a1"]
  type    = set(string)
}

variable "aws_network_acl_vpc_id" {
  default = "vpc-0fedac722f1953c41"
  type    = string
}
