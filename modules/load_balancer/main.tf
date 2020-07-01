resource "aws_elb" "elb" {
  name = var.elb_name
  availability_zones        = var.availability_zones

  listener {
    instance_port = var.backend_port
    instance_protocol = var.backend_protocol
    lb_port = var.frontend_port
    lb_protocol = var.frontend_protocol
  }

  health_check {
    healthy_threshold = var.healthy_threshold
    unhealthy_threshold = var.unhealthy_threshold
    timeout = var.timeout
    target = var.health_check_target
    interval = var.interval
  }

}


