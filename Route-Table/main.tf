resource "aws_route_table" "ac--rtb-01416f1f7a9caceb5" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  route {
    cidr_block                = "10.50.0.0/24"
    vpc_peering_connection_id = "pcx-0417dc5b278b94d11"
  }

  tags = {
    Name = "main-rtb-private1-eu-west-2a"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-01910b765f126a1ff" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  tags = {
    Name = "main-rtb-private2-eu-west-2b"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-020007a0a77fdcf03" {
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-042e21eddd434b20b" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  route {
    cidr_block                = "10.40.0.0/16"
    vpc_peering_connection_id = "pcx-0417dc5b278b94d11"
  }

  tags = {
    Name = "aujus-rtb-private1-eu-west-2a"
  }

  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_route_table" "ac--rtb-0448668edd3b158c3" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  tags = {
    Name = "main-rtb-private3-eu-west-2a"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-052a89214540f690f" {
  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_route_table" "ac--rtb-06be72788a38dd650" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-075e0a6cb1704492b"
  }

  tags = {
    Name = "aujus-rtb-public"
  }

  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_route_table" "ac--rtb-09eef75731b2c2e73" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  tags = {
    Name = "main-rtb-private4-eu-west-2b"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-0ca065df4d0821bd6" {
  tags = {
    Name = "aujus-rtb-private2-eu-west-2b"
  }

  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_route_table" "ac--rtb-0cc0cdb846e0dcc47" {
  route {
    cidr_block         = "0.0.0.0/0"
    transit_gateway_id = "tgw-07b3bfe1973f16f78"
  }

  tags = {
    Name = "craftsilicon-private-subnets-rt"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table" "ac--rtb-0e20ee0f22702a312" {
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "igw-041b16d5723fab576"
  }

  tags = {
    Name = "main-rtb-public"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_route_table_association" "ac--subnet-002ad57466d0cfd46-002F-rtb-01416f1f7a9caceb5" {
  route_table_id = aws_route_table.ac--rtb-01416f1f7a9caceb5.id
  subnet_id      = "subnet-002ad57466d0cfd46"
}

resource "aws_route_table_association" "ac--subnet-0124b4e97562ebbd7-002F-rtb-0e20ee0f22702a312" {
  route_table_id = aws_route_table.ac--rtb-0e20ee0f22702a312.id
  subnet_id      = "subnet-0124b4e97562ebbd7"
}

resource "aws_route_table_association" "ac--subnet-036ada20d56a38f43-002F-rtb-0cc0cdb846e0dcc47" {
  route_table_id = aws_route_table.ac--rtb-0cc0cdb846e0dcc47.id
  subnet_id      = "subnet-036ada20d56a38f43"
}

resource "aws_route_table_association" "ac--subnet-0428e0711a4ca2507-002F-rtb-0cc0cdb846e0dcc47" {
  route_table_id = aws_route_table.ac--rtb-0cc0cdb846e0dcc47.id
  subnet_id      = "subnet-0428e0711a4ca2507"
}

resource "aws_route_table_association" "ac--subnet-05a7709f7ea1ab238-002F-rtb-0ca065df4d0821bd6" {
  route_table_id = aws_route_table.ac--rtb-0ca065df4d0821bd6.id
  subnet_id      = "subnet-05a7709f7ea1ab238"
}

resource "aws_route_table_association" "ac--subnet-078af4ec8efe88431-002F-rtb-06be72788a38dd650" {
  route_table_id = aws_route_table.ac--rtb-06be72788a38dd650.id
  subnet_id      = "subnet-078af4ec8efe88431"
}

resource "aws_route_table_association" "ac--subnet-087e5c32cbaca1cd8-002F-rtb-06be72788a38dd650" {
  route_table_id = aws_route_table.ac--rtb-06be72788a38dd650.id
  subnet_id      = "subnet-087e5c32cbaca1cd8"
}

resource "aws_route_table_association" "ac--subnet-09aa7e3eabd5bae59-002F-rtb-01910b765f126a1ff" {
  route_table_id = aws_route_table.ac--rtb-01910b765f126a1ff.id
  subnet_id      = "subnet-09aa7e3eabd5bae59"
}

resource "aws_route_table_association" "ac--subnet-0a7061207da3fd3a1-002F-rtb-042e21eddd434b20b" {
  route_table_id = aws_route_table.ac--rtb-042e21eddd434b20b.id
  subnet_id      = "subnet-0a7061207da3fd3a1"
}

resource "aws_route_table_association" "ac--subnet-0d715c5c159eae0fb-002F-rtb-0e20ee0f22702a312" {
  route_table_id = aws_route_table.ac--rtb-0e20ee0f22702a312.id
  subnet_id      = "subnet-0d715c5c159eae0fb"
}

resource "aws_route_table_association" "ac--subnet-0f597fdaea877e775-002F-rtb-09eef75731b2c2e73" {
  route_table_id = aws_route_table.ac--rtb-09eef75731b2c2e73.id
  subnet_id      = "subnet-0f597fdaea877e775"
}

resource "aws_route_table_association" "ac--subnet-0fc2fa7eea70faa76-002F-rtb-0448668edd3b158c3" {
  route_table_id = aws_route_table.ac--rtb-0448668edd3b158c3.id
  subnet_id      = "subnet-0fc2fa7eea70faa76"
}
