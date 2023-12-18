resource "aws_eip" "ac--eipalloc-0029df3dfc8c10da3" {
  instance             = var.aws_eip_instance
  network_border_group = var.aws_eip_network_border_group
  network_interface    = var.aws_eip_network_interface
  public_ipv4_pool     = var.aws_eip_public_ipv4_pool
  tags                 = var.aws_eip_tags
  vpc                  = var.aws_eip_vpc
}
