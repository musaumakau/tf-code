resource "aws_security_group" "ac--sg-0038a707a311fb60e" {
  description = "aujas-qradar-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.225.253.2/32", "10.225.253.3/32", "10.225.253.9/32", "10.255.255.192/26", "10.40.0.0/16"]
    from_port   = 514
    protocol    = "tcp"
    self        = false
    to_port     = 514
  }

  ingress {
    cidr_blocks = ["10.225.253.2/32", "10.225.253.3/32", "10.225.253.9/32", "10.40.0.0/16"]
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  name   = "aujas-qradar-sg"
  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_security_group" "ac--sg-00d2ad44295562744" {
  description = "Allow conn to db"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16", "192.168.32.0/24"]
    from_port   = 5432
    protocol    = "tcp"
    self        = false
    to_port     = 5432
  }

  name   = "postgres-db-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0139535ae1f0695db" {
  description = "default VPC security group"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name   = "default"
  vpc_id = "vpc-0fedac722f1953c41"
}

resource "aws_security_group" "ac--sg-01b1d43d825df35b2" {
  description = "Allow SSH access from bastion servers"

  ingress {
    cidr_blocks = ["10.40.136.31/32"]
    description = "Allow access from Bastion"
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  name   = "ssh-access-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-02e85199df1ef741c" {
  description = "Allow connection to Jenkins"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks     = ["10.40.0.0/16"]
    from_port       = 8080
    protocol        = "tcp"
    security_groups = [aws_security_group.ac--sg-03790994b68291a2b.id]
    self            = false
    to_port         = 8080
  }

  name   = "jenkins-server-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-03790994b68291a2b" {
  description = "Allow access to LBs"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["192.168.32.0/24"]
    description = "Allow access from VPN"
    from_port   = 443
    protocol    = "tcp"
    self        = false
    to_port     = 443
  }

  ingress {
    cidr_blocks = ["192.168.32.0/24"]
    description = "Allow access from VPN"
    from_port   = 80
    protocol    = "tcp"
    self        = false
    to_port     = 80
  }

  name   = "internal-loadbalancer-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-057d948e0f36cae53" {
  description = "Allow connection to proxy server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0", "172.17.20.20/32", "172.17.20.29/32"]
    from_port   = 443
    protocol    = "tcp"
    self        = false
    to_port     = 443
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16", "192.168.32.0/24"]
    from_port   = 65
    protocol    = "tcp"
    self        = false
    to_port     = 65
  }

  name   = "proxy-server-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-06f3998032b7fe04f" {
  description = "Allow access to ELK servers"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16"]
    description = "Allow elasticsearch access"
    from_port   = 9200
    protocol    = "tcp"
    self        = false
    to_port     = 9200
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16"]
    description = "Allow kibana access"
    from_port   = 5601
    protocol    = "tcp"
    self        = false
    to_port     = 5601
  }

  ingress {
    from_port       = 5601
    protocol        = "tcp"
    security_groups = [aws_security_group.ac--sg-03790994b68291a2b.id]
    self            = false
    to_port         = 5601
  }

  name   = "elk-servers-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0743be0331b588c79" {
  description = "default VPC security group"
  name        = "default"
  vpc_id      = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0833d70477fbb7784" {
  description = "Allow access to Kafka"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16"]
    from_port   = 9092
    protocol    = "tcp"
    self        = false
    to_port     = 9092
  }

  name   = "kafka-msk-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-09f2aa943abf46aa2" {
  description = "Allow connection from internet"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 443
    protocol    = "tcp"
    self        = false
    to_port     = 443
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 80
    protocol    = "tcp"
    self        = false
    to_port     = 80
  }

  name   = "external-loadbalancer-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0a729c4d996e71603" {
  description = "Allow SSH access to bastion servers"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16"]
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  ingress {
    cidr_blocks = ["192.168.32.0/24"]
    description = "Allow access from VPN"
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  name   = "bastion-servers-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0b894407029c80409" {
  description = "Allow conn"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16", "192.168.32.0/24"]
    from_port   = 27017
    protocol    = "tcp"
    self        = false
    to_port     = 27017
  }

  name   = "document-db-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0bcbcba14d5ab6bd5" {
  description = "Allow connection to wordpress server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    from_port       = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.ac--sg-09f2aa943abf46aa2.id]
    self            = false
    to_port         = 80
  }

  name   = "wordpress-server-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0dcadb90255b530c2" {
  description = "EKS created security group applied to ENI that is attached to EKS Control Plane master nodes, as well as any managed workloads."

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "kubernetes.io/rule/nlb/client=a953ad6f802b345fe85f29d793a4e104"
    from_port   = 32033
    protocol    = "tcp"
    self        = false
    to_port     = 32033
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "kubernetes.io/rule/nlb/mtu"
    from_port   = 3
    protocol    = "icmp"
    self        = false
    to_port     = 4
  }

  ingress {
    cidr_blocks = ["10.255.255.202/32", "192.168.32.0/24"]
    from_port   = 32033
    protocol    = "tcp"
    self        = false
    to_port     = 32033
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16", "192.168.32.0/24"]
    from_port   = 443
    protocol    = "tcp"
    self        = false
    to_port     = 443
  }

  ingress {
    from_port = 0
    protocol  = "-1"
    self      = true
    to_port   = 0
  }

  name = "eks-cluster-sg-eks-cluster-365256518"

  tags = {
    Name                                = "eks-cluster-sg-eks-cluster-365256518"
    "kubernetes.io/cluster/eks-cluster" = "owned"
  }

  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0e1cf3b2b6001a62e" {
  description = "public-bastion-servers-sg"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow access from internet"
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  name   = "public-bastion-servers-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0eb93ca9d68a52789" {
  description = "Allow connection to redis"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.40.0.0/16"]
    from_port   = 6379
    protocol    = "tcp"
    self        = false
    to_port     = 6379
  }

  name   = "redis-cluster-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0f018fbcd4e3fd7cd" {
  description = "Allow connection to metabase server"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    from_port       = 3000
    protocol        = "tcp"
    security_groups = [aws_security_group.ac--sg-03790994b68291a2b.id, aws_security_group.ac--sg-09f2aa943abf46aa2.id]
    self            = false
    to_port         = 3000
  }

  name   = "metabase-server-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}

resource "aws_security_group" "ac--sg-0f5a4f623d1148cb8" {
  description = "Allow connection to mysql"

  egress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    protocol    = "-1"
    self        = false
    to_port     = 0
  }

  ingress {
    cidr_blocks = ["10.20.0.0/16", "10.40.0.0/16", "192.168.32.0/24"]
    from_port   = 3306
    protocol    = "tcp"
    self        = false
    to_port     = 3306
  }

  name   = "mysql-db-sg"
  vpc_id = "vpc-0a776fe934cdc9011"
}
