resource "aws_customer_gateway" "ac--cgw-01c0e2514605f7d46" {
  bgp_asn    = "65000"
  ip_address = "196.43.248.253"

  tags = {
    Name = "scf-craftsilicon-gateway"
  }

  type = "ipsec.1"
}

resource "aws_customer_gateway" "ac--cgw-021eca08e2ee393fe" {
  bgp_asn    = "65000"
  ip_address = "1.6.60.44"

  tags = {
    Name = "Aujas-Qradar"
  }

  type = "ipsec.1"
}
