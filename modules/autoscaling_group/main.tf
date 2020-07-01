
resource "aws_launch_template" "demo" {
    name_prefix                = "demo-lc"
    image_id                   = var.lc_ami_id
    instance_type              = var.lc_instance_type
    key_name                   = var.lc_key_name
    vpc_security_group_ids     = var.lc_security_groups
    user_data                  = filebase64("${path.module}/app.sh")
}


resource "aws_autoscaling_group" "asg" {

    desired_capacity          = var.asg_desired_capacity
    min_size                  = var.asg_min_size
    max_size                  = var.asg_max_size
    availability_zones        = var.availability_zones

    launch_template {
        id      = aws_launch_template.demo.id
        version = "$Latest"
    }

    load_balancers = [var.asg_load_balancers]
}


