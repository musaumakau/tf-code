variable "aws_internet_gateway_tags" {
  default {
    Name = "main-igw"
  }

  type = map(string)
}

variable "aws_internet_gateway_vpc_id" {
  default = "vpc-0a776fe934cdc9011"
  type    = string
}
