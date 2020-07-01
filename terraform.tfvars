aws_region                  = "us-east-1"

ssh_key_name                = "knol"

instance_type               = "t2.micro"

private_key_path            = "knol.pem"

environment                 = "dev"

tag_owner                   = "knoldus-techub"

ami                         = "ami-098f16afa9edf40be"

nodes_asg_desired_capacity  = 2

nodes_asg_min_size          = 1

nodes_asg_max_size          = 2

availability_zones          = [ "us-east-1a" ]
