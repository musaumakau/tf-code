resource "aws_autoscaling_group" "ac--eks-on-demand_node-grp-1-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a" {
  capacity_rebalance        = var.aws_autoscaling_group_capacity_rebalance
  default_cooldown          = var.aws_autoscaling_group_default_cooldown
  default_instance_warmup   = var.aws_autoscaling_group_default_instance_warmup
  desired_capacity          = var.aws_autoscaling_group_desired_capacity
  health_check_grace_period = var.aws_autoscaling_group_health_check_grace_period
  health_check_type         = var.aws_autoscaling_group_health_check_type
  max_instance_lifetime     = var.aws_autoscaling_group_max_instance_lifetime
  max_size                  = var.aws_autoscaling_group_max_size
  metrics_granularity       = var.aws_autoscaling_group_metrics_granularity
  min_size                  = var.aws_autoscaling_group_min_size

  mixed_instances_policy {
    instances_distribution {
      on_demand_allocation_strategy            = "prioritized"
      on_demand_base_capacity                  = 0
      on_demand_percentage_above_base_capacity = 100
      spot_allocation_strategy                 = "lowest-price"
      spot_instance_pools                      = 2
    }

    launch_template {
      launch_template_specification {
        launch_template_id   = "lt-09eacd9beeed407b3"
        launch_template_name = "eks-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
        version              = "1"
      }

      override {
        instance_type                 = "t3.large"
      }
    }
  }

  name                    = var.aws_autoscaling_group_name
  protect_from_scale_in   = var.aws_autoscaling_group_protect_from_scale_in
  service_linked_role_arn = var.aws_autoscaling_group_service_linked_role_arn

  tag {
    key                 = "eks:cluster-name"
    propagate_at_launch = true
    value               = "eks-cluster"
  }

  tag {
    key                 = "eks:nodegroup-name"
    propagate_at_launch = true
    value               = "on-demand_node-grp-1"
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/eks-cluster"
    propagate_at_launch = true
    value               = "owned"
  }

  tag {
    key                 = "k8s.io/cluster-autoscaler/enabled"
    propagate_at_launch = true
    value               = "true"
  }

  tag {
    key                 = "kubernetes.io/cluster/eks-cluster"
    propagate_at_launch = true
    value               = "owned"
  }

  termination_policies = var.aws_autoscaling_group_termination_policies
  vpc_zone_identifier  = var.aws_autoscaling_group_vpc_zone_identifier
}

resource "aws_lb" "ac--a953ad6f802b345fe85f29d793a4e104" {
  enable_cross_zone_load_balancing = var.aws_lb_enable_cross_zone_load_balancing
  enable_deletion_protection       = var.aws_lb_enable_deletion_protection
  internal                         = var.aws_lb_internal
  ip_address_type                  = var.aws_lb_ip_address_type
  load_balancer_type               = var.aws_lb_load_balancer_type
  name                             = var.aws_lb_name

  subnet_mapping {
    subnet_id = "subnet-002ad57466d0cfd46"
  }

  subnet_mapping {
    subnet_id = "subnet-09aa7e3eabd5bae59"
  }

  subnets = var.aws_lb_subnets
  tags    = var.aws_lb_tags
}

resource "aws_lb" "ac--ec2-internal" {
  desync_mitigation_mode                      = var.aws_lb_desync_mitigation_mode
  drop_invalid_header_fields                  = var.aws_lb_drop_invalid_header_fields
  enable_cross_zone_load_balancing            = var.aws_lb_enable_cross_zone_load_balancing
  enable_deletion_protection                  = var.aws_lb_enable_deletion_protection
  enable_http2                                = var.aws_lb_enable_http2
  enable_tls_version_and_cipher_suite_headers = var.aws_lb_enable_tls_version_and_cipher_suite_headers
  enable_waf_fail_open                        = var.aws_lb_enable_waf_fail_open
  enable_xff_client_port                      = var.aws_lb_enable_xff_client_port
  idle_timeout                                = var.aws_lb_idle_timeout
  internal                                    = var.aws_lb_internal
  ip_address_type                             = var.aws_lb_ip_address_type
  load_balancer_type                          = var.aws_lb_load_balancer_type
  name                                        = var.aws_lb_name
  preserve_host_header                        = var.aws_lb_preserve_host_header
  security_groups                             = var.aws_lb_security_groups

  subnet_mapping {
    subnet_id = "subnet-002ad57466d0cfd46"
  }

  subnet_mapping {
    subnet_id = "subnet-09aa7e3eabd5bae59"
  }

  subnets                    = var.aws_lb_subnets
  xff_header_processing_mode = var.aws_lb_xff_header_processing_mode
}

resource "aws_lb" "ac--main-internet-facing-lb" {
  desync_mitigation_mode                      = var.aws_lb_desync_mitigation_mode
  drop_invalid_header_fields                  = var.aws_lb_drop_invalid_header_fields
  enable_cross_zone_load_balancing            = var.aws_lb_enable_cross_zone_load_balancing
  enable_deletion_protection                  = var.aws_lb_enable_deletion_protection
  enable_http2                                = var.aws_lb_enable_http2
  enable_tls_version_and_cipher_suite_headers = var.aws_lb_enable_tls_version_and_cipher_suite_headers
  enable_waf_fail_open                        = var.aws_lb_enable_waf_fail_open
  enable_xff_client_port                      = var.aws_lb_enable_xff_client_port
  idle_timeout                                = var.aws_lb_idle_timeout
  internal                                    = var.aws_lb_internal
  ip_address_type                             = var.aws_lb_ip_address_type
  load_balancer_type                          = var.aws_lb_load_balancer_type
  name                                        = var.aws_lb_name
  preserve_host_header                        = var.aws_lb_preserve_host_header
  security_groups                             = var.aws_lb_security_groups

  subnet_mapping {
    subnet_id = "subnet-0124b4e97562ebbd7"
  }

  subnet_mapping {
    subnet_id = "subnet-0d715c5c159eae0fb"
  }

  subnets                    = var.aws_lb_subnets
  xff_header_processing_mode = var.aws_lb_xff_header_processing_mode
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-ec2-internal-002F-5db290448251c166-002F-69e59c59ef6badc4" {
  default_action {
    order                = 1

    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }

    type = "redirect"
  }

  load_balancer_arn = aws_lb.ac--ec2-internal.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-ec2-internal-002F-5db290448251c166-002F-b909a6332517c15e" {
  certificate_arn = var.aws_lb_listener_certificate_arn

  default_action {

    fixed_response {
      content_type = "text/plain"
      message_body = "Not Found"
      status_code  = "404"
    }

    order    = 1
    type     = "fixed-response"
  }

  load_balancer_arn = aws_lb.ac--ec2-internal.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
  ssl_policy        = var.aws_lb_listener_ssl_policy
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-main-internet-facing-lb-002F-230b2a557ad6f675-002F-337f73e1e9498d12" {
  certificate_arn = var.aws_lb_listener_certificate_arn

  default_action {

    fixed_response {
      content_type = "text/plain"
      message_body = "Not Found"
      status_code  = "404"
    }

    order    = 1
    type     = "fixed-response"
  }

  load_balancer_arn = aws_lb.ac--main-internet-facing-lb.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
  ssl_policy        = var.aws_lb_listener_ssl_policy
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-main-internet-facing-lb-002F-230b2a557ad6f675-002F-7cdbb06f00117511" {
  default_action {
    order                = 1

    redirect {
      host        = "#{host}"
      path        = "/#{path}"
      port        = "443"
      protocol    = "HTTPS"
      query       = "#{query}"
      status_code = "HTTP_301"
    }

    type = "redirect"
  }

  load_balancer_arn = aws_lb.ac--main-internet-facing-lb.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-net-002F-a953ad6f802b345fe85f29d793a4e104-002F-020ba1187374b56a-002F-3d16c1315760ab22" {
  certificate_arn = var.aws_lb_listener_certificate_arn

  default_action {
    order                = 0
    target_group_arn     = aws_lb_target_group.ac--k8s-ingressn-ingressn-f92c018ed1.arn
    type                 = "forward"
  }

  load_balancer_arn = aws_lb.ac--a953ad6f802b345fe85f29d793a4e104.arn
  port              = var.aws_lb_listener_port
  protocol          = var.aws_lb_listener_protocol
  ssl_policy        = var.aws_lb_listener_ssl_policy
  tags              = var.aws_lb_listener_tags
}

resource "aws_lb_target_group" "ac--internal-nlb-tg" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTPS"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--jenkins" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/login"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--k8s-ingressn-ingressn-f92c018ed1" {
  connection_termination = var.aws_lb_target_group_connection_termination
  deregistration_delay   = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 30
    port                = "traffic-port"
    protocol            = "TCP"
    timeout             = 10
    unhealthy_threshold = 3
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  preserve_client_ip                = var.aws_lb_target_group_preserve_client_ip
  protocol                          = var.aws_lb_target_group_protocol
  proxy_protocol_v2                 = var.aws_lb_target_group_proxy_protocol_v2

  stickiness {
    cookie_duration = 0
    enabled         = false
    type            = "source_ip"
  }

  tags            = var.aws_lb_target_group_tags
  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--kibana" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--metabase" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--metabase-public-lb" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--proxy" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTPS"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group" "ac--wordpress-tg" {
  deregistration_delay = var.aws_lb_target_group_deregistration_delay

  health_check {
    enabled             = true
    healthy_threshold   = 5
    interval            = 30
    matcher             = "200,301"
    path                = "/"
    port                = "traffic-port"
    protocol            = "HTTP"
    timeout             = 5
    unhealthy_threshold = 2
  }

  ip_address_type                   = var.aws_lb_target_group_ip_address_type
  load_balancing_algorithm_type     = var.aws_lb_target_group_load_balancing_algorithm_type
  load_balancing_cross_zone_enabled = var.aws_lb_target_group_load_balancing_cross_zone_enabled
  name                              = var.aws_lb_target_group_name
  port                              = var.aws_lb_target_group_port
  protocol                          = var.aws_lb_target_group_protocol
  protocol_version                  = var.aws_lb_target_group_protocol_version
  slow_start                        = var.aws_lb_target_group_slow_start

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = var.aws_lb_target_group_target_type
  vpc_id          = var.aws_lb_target_group_vpc_id
}

resource "aws_lb_target_group_attachment" "ac--10-002E-40-002E-135-002E-121" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--10-002E-40-002E-148-002E-87" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-008d7e6614222b602" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-00f2670c88b40328e" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-0130d3a39f9b2737d" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-01c6720a66005f8bb" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-01c7ef7ba646e6a54" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}

resource "aws_lb_target_group_attachment" "ac--i-02199476884f35278" {
  target_group_arn = var.aws_lb_target_group_attachment_target_group_arn
  target_id        = var.aws_lb_target_group_attachment_target_id
}
