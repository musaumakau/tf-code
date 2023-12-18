resource "aws_security_group" "ac--sg-0038a707a311fb60e" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-00d2ad44295562744" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0139535ae1f0695db" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-01b1d43d825df35b2" {
  description = var.aws_security_group_description

  ingress {
    cidr_blocks = ["10.40.136.31/32"]
    description = "Allow access from Bastion"
    from_port   = 22
    protocol    = "tcp"
    self        = false
    to_port     = 22
  }

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-02e85199df1ef741c" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-03790994b68291a2b" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-057d948e0f36cae53" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-06f3998032b7fe04f" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0743be0331b588c79" {
  description = var.aws_security_group_description
  name        = var.aws_security_group_name
  vpc_id      = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0833d70477fbb7784" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-09f2aa943abf46aa2" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0a729c4d996e71603" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0b894407029c80409" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0bcbcba14d5ab6bd5" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0dcadb90255b530c2" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  tags   = var.aws_security_group_tags
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0e1cf3b2b6001a62e" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0eb93ca9d68a52789" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0f018fbcd4e3fd7cd" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_security_group" "ac--sg-0f5a4f623d1148cb8" {
  description = var.aws_security_group_description

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

  name   = var.aws_security_group_name
  vpc_id = var.aws_security_group_vpc_id
}

resource "aws_securityhub_account" "ac--766176144542" {
  auto_enable_controls      = var.aws_securityhub_account_auto_enable_controls
  control_finding_generator = var.aws_securityhub_account_control_finding_generator
  enable_default_standards  = var.aws_securityhub_account_enable_default_standards
}
