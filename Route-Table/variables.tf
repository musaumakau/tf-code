variable "aws_route_table_association_subnet_id" {
  default = "subnet-05a7709f7ea1ab238"
  type    = string
}

variable "aws_route_table_tags" {
  default {
    Name = "aujus-rtb-private1-eu-west-2a"
  }

  type = map(string)
}

variable "aws_route_table_vpc_id" {
  default = "vpc-0fedac722f1953c41"
  type    = string
}
