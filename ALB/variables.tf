variable "aws_autoscaling_group_capacity_rebalance" {
  default = true
  type    = bool
}

variable "aws_autoscaling_group_default_cooldown" {
  default = 300
  type    = number
}

variable "aws_autoscaling_group_default_instance_warmup" {
  default = 0
  type    = number
}

variable "aws_autoscaling_group_desired_capacity" {
  default = 10
  type    = number
}

variable "aws_autoscaling_group_health_check_grace_period" {
  default = 15
  type    = number
}

variable "aws_autoscaling_group_health_check_type" {
  default = "EC2"
  type    = string
}

variable "aws_autoscaling_group_max_instance_lifetime" {
  default = 0
  type    = number
}

variable "aws_autoscaling_group_max_size" {
  default = 11
  type    = number
}

variable "aws_autoscaling_group_metrics_granularity" {
  default = "1Minute"
  type    = string
}

variable "aws_autoscaling_group_min_size" {
  default = 2
  type    = number
}

variable "aws_autoscaling_group_name" {
  default = "eks-on-demand_node-grp-1-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  type    = string
}

variable "aws_autoscaling_group_protect_from_scale_in" {
  default = false
  type    = bool
}

variable "aws_autoscaling_group_service_linked_role_arn" {
  default = "arn:aws:iam::766176144542:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"
  type    = string
}

variable "aws_autoscaling_group_termination_policies" {
  default = ["AllocationStrategy", "OldestInstance", "OldestLaunchTemplate"]
  type    = list(string)
}

variable "aws_autoscaling_group_vpc_zone_identifier" {
  default = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  type    = set(string)
}

variable "aws_lb_desync_mitigation_mode" {
  default = "defensive"
  type    = string
}

variable "aws_lb_drop_invalid_header_fields" {
  default = true
  type    = bool
}

variable "aws_lb_enable_cross_zone_load_balancing" {
  default = true
  type    = bool
}

variable "aws_lb_enable_deletion_protection" {
  default = true
  type    = bool
}

variable "aws_lb_enable_http2" {
  default = true
  type    = bool
}

variable "aws_lb_enable_tls_version_and_cipher_suite_headers" {
  default = false
  type    = bool
}

variable "aws_lb_enable_waf_fail_open" {
  default = false
  type    = bool
}

variable "aws_lb_enable_xff_client_port" {
  default = false
  type    = bool
}

variable "aws_lb_idle_timeout" {
  default = 60
  type    = number
}

variable "aws_lb_internal" {
  default = true
  type    = bool
}

variable "aws_lb_ip_address_type" {
  default = "ipv4"
  type    = string
}

variable "aws_lb_listener_certificate_arn" {
  default = "arn:aws:acm:eu-west-2:766176144542:certificate/99369ce8-843d-4837-87e9-0fc652e88f39"
  type    = string
}

variable "aws_lb_listener_port" {
  default = 443
  type    = number
}

variable "aws_lb_listener_protocol" {
  default = "HTTPS"
  type    = string
}

variable "aws_lb_listener_ssl_policy" {
  default = "ELBSecurityPolicy-TLS13-1-2-2021-06"
  type    = string
}

variable "aws_lb_listener_tags" {
  default {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }

  type = map(string)
}

variable "aws_lb_load_balancer_type" {
  default = "application"
  type    = string
}

variable "aws_lb_name" {
  default = "ec2-internal"
  type    = string
}

variable "aws_lb_preserve_host_header" {
  default = false
  type    = bool
}

variable "aws_lb_security_groups" {
  default = ["sg-03790994b68291a2b"]
  type    = set(string)
}

variable "aws_lb_subnets" {
  default = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  type    = set(string)
}

variable "aws_lb_tags" {
  default {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }

  type = map(string)
}

variable "aws_lb_target_group_attachment_target_group_arn" {
  default = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/internal-nlb-tg/bb61b936c1f5148a"
  type    = string
}

variable "aws_lb_target_group_attachment_target_id" {
  default = "10.40.135.121"
  type    = string
}

variable "aws_lb_target_group_connection_termination" {
  default = false
  type    = bool
}

variable "aws_lb_target_group_deregistration_delay" {
  default = "300"
  type    = string
}

variable "aws_lb_target_group_ip_address_type" {
  default = "ipv4"
  type    = string
}

variable "aws_lb_target_group_load_balancing_algorithm_type" {
  default = "round_robin"
  type    = string
}

variable "aws_lb_target_group_load_balancing_cross_zone_enabled" {
  default = "use_load_balancer_configuration"
  type    = string
}

variable "aws_lb_target_group_name" {
  default = "jenkins"
  type    = string
}

variable "aws_lb_target_group_port" {
  default = 8080
  type    = number
}

variable "aws_lb_target_group_preserve_client_ip" {
  default = "true"
  type    = string
}

variable "aws_lb_target_group_protocol" {
  default = "HTTP"
  type    = string
}

variable "aws_lb_target_group_protocol_version" {
  default = "HTTP1"
  type    = string
}

variable "aws_lb_target_group_proxy_protocol_v2" {
  default = false
  type    = bool
}

variable "aws_lb_target_group_slow_start" {
  default = 0
  type    = number
}

variable "aws_lb_target_group_tags" {
  default {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }

  type = map(string)
}

variable "aws_lb_target_group_target_type" {
  default = "instance"
  type    = string
}

variable "aws_lb_target_group_vpc_id" {
  default = "vpc-0a776fe934cdc9011"
  type    = string
}

variable "aws_lb_xff_header_processing_mode" {
  default = "append"
  type    = string
}
