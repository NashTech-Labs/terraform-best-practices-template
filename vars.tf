variable "aws_region" {}

variable "ssh_key_name" {
  default = "devops-key"
}

variable "private_key_path" {}

variable "ami" {}

variable "instance_type" {}

variable "environment" {}

variable "tag_owner" {}

variable "nodes_asg_desired_capacity" {}

variable "nodes_asg_min_size" {}

variable "nodes_asg_max_size" {}

variable "availability_zones" {
  type = "list"
}