resource "aws_internet_gateway" "ac--igw-041b16d5723fab576" {
  tags = {
    Name = "main-igw"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_internet_gateway" "ac--igw-075e0a6cb1704492b" {
  tags = {
    Name = "aujus-igw"
  }

  vpc_id = "vpc-0fedac722f1953c41"
}
