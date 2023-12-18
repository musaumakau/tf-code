resource "aws_internet_gateway" "ac--igw-041b16d5723fab576" {
  tags   = var.aws_internet_gateway_tags
  vpc_id = var.aws_internet_gateway_vpc_id
}

resource "aws_internet_gateway" "ac--igw-075e0a6cb1704492b" {
  tags   = var.aws_internet_gateway_tags
  vpc_id = var.aws_internet_gateway_vpc_id
}
