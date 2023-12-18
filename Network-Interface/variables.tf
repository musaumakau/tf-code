variable "aws_network_interface_description" {
  default = "DO NOT DELETE - Amazon MSK network interface for cluster arn:aws:kafka:eu-west-2:766176144542:cluster/kafka-cluster/6411a16c-75d7-48b0-afdb-8ed466fe2072-2."
  type    = string
}

variable "aws_network_interface_interface_type" {
  default = "interface"
  type    = string
}

variable "aws_network_interface_ipv4_prefix_count" {
  default = 0
  type    = number
}

variable "aws_network_interface_ipv6_address_count" {
  default = 0
  type    = number
}

variable "aws_network_interface_ipv6_prefix_count" {
  default = 0
  type    = number
}

variable "aws_network_interface_private_ip" {
  default = "10.40.177.134"
  type    = string
}

variable "aws_network_interface_private_ips" {
  default = ["10.40.177.134"]
  type    = set(string)
}

variable "aws_network_interface_private_ips_count" {
  default = 0
  type    = number
}

variable "aws_network_interface_security_groups" {
  default = ["sg-0833d70477fbb7784"]
  type    = set(string)
}

variable "aws_network_interface_source_dest_check" {
  default = true
  type    = bool
}

variable "aws_network_interface_subnet_id" {
  default = "subnet-0f597fdaea877e775"
  type    = string
}

variable "aws_network_interface_tags" {
  default {
    "cluster.k8s.amazonaws.com/name"     = "eks-cluster"
    "node.k8s.amazonaws.com/instance_id" = "i-0e5f6eaf5507b2388"
  }

  type = map(string)
}
