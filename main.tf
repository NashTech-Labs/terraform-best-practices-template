

module "demo_asg_sg" {
  source                  = "./modules/security_group"

  sg_name                 = "${var.environment}-nodes-sg"
}


module "demo_asg" {
  source                  = "./modules/autoscaling_group"

  lc_ami_id               = var.ami
  lc_instance_type        = var.instance_type
  lc_key_name             = var.ssh_key_name
  lc_security_groups      = [module.demo_asg_sg.id]
  asg_name                = "${var.tag_owner}-${var.environment}-nodes-asg"
  asg_desired_capacity    = var.nodes_asg_desired_capacity
  asg_min_size            = var.nodes_asg_min_size
  asg_max_size            = var.nodes_asg_max_size
  asg_load_balancers      = module.demo_elb.elb_id
  availability_zones      = var.availability_zones
}

module "demo_elb" {
  source              = "./modules/load_balancer"
  elb_name            = "app-${var.environment}-elb"
  health_check_target = "TCP:80"
  backend_port = "80"
  backend_protocol = "http"
  frontend_port = "80"
  frontend_protocol = "http"
  availability_zones = var.availability_zones
  tags = var.environment
}
