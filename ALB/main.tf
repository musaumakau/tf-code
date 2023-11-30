resource "aws_autoscaling_group" "ac--eks-on-demand_node-grp-1-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a" {
  capacity_rebalance        = true
  default_cooldown          = 300
  default_instance_warmup   = 0
  desired_capacity          = 9
  health_check_grace_period = 15
  health_check_type         = "EC2"
  max_instance_lifetime     = 0
  max_size                  = 10
  metrics_granularity       = "1Minute"
  min_size                  = 2

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

  name                    = "eks-on-demand_node-grp-1-04c5dac5-ba71-450c-c4e3-f8bbd79e9c5a"
  protect_from_scale_in   = false
  service_linked_role_arn = "arn:aws:iam::766176144542:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling"

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

  termination_policies = ["AllocationStrategy", "OldestInstance", "OldestLaunchTemplate"]
  vpc_zone_identifier  = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
}

resource "aws_lb" "ac--a953ad6f802b345fe85f29d793a4e104" {
  enable_cross_zone_load_balancing = true
  enable_deletion_protection       = true
  internal                         = true
  ip_address_type                  = "ipv4"
  load_balancer_type               = "network"
  name                             = "a953ad6f802b345fe85f29d793a4e104"

  subnet_mapping {
    subnet_id = "subnet-002ad57466d0cfd46"
  }

  subnet_mapping {
    subnet_id = "subnet-09aa7e3eabd5bae59"
  }

  subnets = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]

  tags = {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }
}

resource "aws_lb" "ac--ec2-internal" {
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = true
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = true
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  idle_timeout                                = 60
  internal                                    = true
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "ec2-internal"
  preserve_host_header                        = false
  security_groups                             = ["sg-03790994b68291a2b"]

  subnet_mapping {
    subnet_id = "subnet-002ad57466d0cfd46"
  }

  subnet_mapping {
    subnet_id = "subnet-09aa7e3eabd5bae59"
  }

  subnets                    = ["subnet-002ad57466d0cfd46", "subnet-09aa7e3eabd5bae59"]
  xff_header_processing_mode = "append"
}

resource "aws_lb" "ac--main-internet-facing-lb" {
  desync_mitigation_mode                      = "defensive"
  drop_invalid_header_fields                  = true
  enable_cross_zone_load_balancing            = true
  enable_deletion_protection                  = true
  enable_http2                                = true
  enable_tls_version_and_cipher_suite_headers = false
  enable_waf_fail_open                        = false
  enable_xff_client_port                      = false
  idle_timeout                                = 120
  internal                                    = false
  ip_address_type                             = "ipv4"
  load_balancer_type                          = "application"
  name                                        = "main-internet-facing-lb"
  preserve_host_header                        = false
  security_groups                             = ["sg-09f2aa943abf46aa2"]

  subnet_mapping {
    subnet_id = "subnet-0124b4e97562ebbd7"
  }

  subnet_mapping {
    subnet_id = "subnet-0d715c5c159eae0fb"
  }

  subnets                    = ["subnet-0124b4e97562ebbd7", "subnet-0d715c5c159eae0fb"]
  xff_header_processing_mode = "append"
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
  port              = 80
  protocol          = "HTTP"
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-ec2-internal-002F-5db290448251c166-002F-b909a6332517c15e" {
  certificate_arn = "arn:aws:acm:eu-west-2:766176144542:certificate/99369ce8-843d-4837-87e9-0fc652e88f39"

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
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-app-002F-main-internet-facing-lb-002F-230b2a557ad6f675-002F-337f73e1e9498d12" {
  certificate_arn = "arn:aws:acm:eu-west-2:766176144542:certificate/99369ce8-843d-4837-87e9-0fc652e88f39"

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
  port              = 443
  protocol          = "HTTPS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"
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
  port              = 80
  protocol          = "HTTP"
}

resource "aws_lb_listener" "ac--arn-003A-aws-003A-elasticloadbalancing-003A-eu-west-2-003A-766176144542-003A-listener-002F-net-002F-a953ad6f802b345fe85f29d793a4e104-002F-020ba1187374b56a-002F-3d16c1315760ab22" {
  certificate_arn = "arn:aws:acm:eu-west-2:766176144542:certificate/61cc4da6-9c33-4eb5-8f91-cbfc389b4b50"

  default_action {
    order                = 0
    target_group_arn     = aws_lb_target_group.ac--k8s-ingressn-ingressn-f92c018ed1.arn
    type                 = "forward"
  }

  load_balancer_arn = aws_lb.ac--a953ad6f802b345fe85f29d793a4e104.arn
  port              = 443
  protocol          = "TLS"
  ssl_policy        = "ELBSecurityPolicy-TLS13-1-2-2021-06"

  tags = {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }
}

resource "aws_lb_target_group" "ac--internal-nlb-tg" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "internal-nlb-tg"
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "ip"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--jenkins" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "jenkins"
  port                              = 8080
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--k8s-ingressn-ingressn-f92c018ed1" {
  connection_termination = false
  deregistration_delay   = "300"

  health_check {
    enabled             = true
    healthy_threshold   = 3
    interval            = 30
    port                = "traffic-port"
    protocol            = "TCP"
    timeout             = 10
    unhealthy_threshold = 3
  }

  ip_address_type                   = "ipv4"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "k8s-ingressn-ingressn-f92c018ed1"
  port                              = 32033
  preserve_client_ip                = "true"
  protocol                          = "TLS"
  proxy_protocol_v2                 = false

  stickiness {
    cookie_duration = 0
    enabled         = false
    type            = "source_ip"
  }

  tags = {
    "kubernetes.io/cluster/eks-cluster" = "owned"
    "kubernetes.io/service-name"        = "ingress-nginx/ingress-nginx-controller-internal"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--kibana" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "kibana"
  port                              = 5601
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--metabase" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "metabase"
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--metabase-public-lb" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "metabase-public-lb"
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--proxy" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "proxy"
  port                              = 443
  protocol                          = "HTTPS"
  protocol_version                  = "HTTP2"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group" "ac--wordpress-tg" {
  deregistration_delay = "300"

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

  ip_address_type                   = "ipv4"
  load_balancing_algorithm_type     = "round_robin"
  load_balancing_cross_zone_enabled = "use_load_balancer_configuration"
  name                              = "wordpress-tg"
  port                              = 80
  protocol                          = "HTTP"
  protocol_version                  = "HTTP1"
  slow_start                        = 0

  stickiness {
    cookie_duration = 86400
    enabled         = false
    type            = "lb_cookie"
  }

  target_type     = "instance"
  vpc_id          = "vpc-0a776fe934cdc9011"
}

resource "aws_lb_target_group_attachment" "ac--10-002E-40-002E-135-002E-121" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/internal-nlb-tg/bb61b936c1f5148a"
  target_id        = "10.40.135.121"
}

resource "aws_lb_target_group_attachment" "ac--10-002E-40-002E-148-002E-87" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/internal-nlb-tg/bb61b936c1f5148a"
  target_id        = "10.40.148.87"
}

resource "aws_lb_target_group_attachment" "ac--i-008d7e6614222b602" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-008d7e6614222b602"
}

resource "aws_lb_target_group_attachment" "ac--i-00f2670c88b40328e" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-00f2670c88b40328e"
}

resource "aws_lb_target_group_attachment" "ac--i-0130d3a39f9b2737d" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-0130d3a39f9b2737d"
}

resource "aws_lb_target_group_attachment" "ac--i-01c6720a66005f8bb" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/kibana/7df2a4840b11b7c1"
  target_id        = "i-01c6720a66005f8bb"
}

resource "aws_lb_target_group_attachment" "ac--i-01c7ef7ba646e6a54" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/wordpress-tg/62d6733320579c0b"
  target_id        = "i-01c7ef7ba646e6a54"
}

resource "aws_lb_target_group_attachment" "ac--i-02199476884f35278" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/proxy/e75afe49eab6d9d7"
  target_id        = "i-02199476884f35278"
}

resource "aws_lb_target_group_attachment" "ac--i-06ff6e10c20a9cca6" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-06ff6e10c20a9cca6"
}

resource "aws_lb_target_group_attachment" "ac--i-07a923548d681a04f" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/jenkins/9738b80de8f66efb"
  target_id        = "i-07a923548d681a04f"
}

resource "aws_lb_target_group_attachment" "ac--i-09b50ae9297aec290" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-09b50ae9297aec290"
}

resource "aws_lb_target_group_attachment" "ac--i-0b7275149b005dfd2" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-0b7275149b005dfd2"
}

resource "aws_lb_target_group_attachment" "ac--i-0e5f6eaf5507b2388" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-0e5f6eaf5507b2388"
}

resource "aws_lb_target_group_attachment" "ac--i-0faff146006ccaaaa" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-0faff146006ccaaaa"
}

resource "aws_lb_target_group_attachment" "ac--i-0fe0cfe073be148d3" {
  target_group_arn = "arn:aws:elasticloadbalancing:eu-west-2:766176144542:targetgroup/k8s-ingressn-ingressn-f92c018ed1/c60d9f77ff5d321f"
  target_id        = "i-0fe0cfe073be148d3"
}
