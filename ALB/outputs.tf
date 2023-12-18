output "aws_autoscaling_group_arn" {
  value = aws_autoscaling_group.ac--eks-on-demand_node-grp-1-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a.arn
}

output "aws_lb_arn" {
  value = aws_lb.ac--main-internet-facing-lb.arn
}

output "aws_lb_arn_suffix" {
  value = aws_lb.ac--main-internet-facing-lb.arn_suffix
}

output "aws_lb_dns_name" {
  value = aws_lb.ac--main-internet-facing-lb.dns_name
}

output "aws_lb_listener_arn" {
  value = aws_lb_listener.ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-ec2-internal-002F-5db290448251c166-002F-b909a6332517c15e.arn
}

output "aws_lb_target_group_arn" {
  value = aws_lb_target_group.ac--k8s-ingressn-ingressn-f92c018ed1.arn
}

output "aws_lb_target_group_arn_suffix" {
  value = aws_lb_target_group.ac--k8s-ingressn-ingressn-f92c018ed1.arn_suffix
}

output "aws_lb_vpc_id" {
  value = aws_lb.ac--main-internet-facing-lb.vpc_id
}

output "aws_lb_zone_id" {
  value = aws_lb.ac--main-internet-facing-lb.zone_id
}
