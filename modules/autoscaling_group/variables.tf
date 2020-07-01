

variable "lc_ami_id" {
  description = "AMI ID"
  default     = ""
}

variable "lc_instance_type" {
  description = "EC2 Instance type for launch configuration"
}

variable "lc_key_name" {
  description = "SSH Key name for launch configuration"
}

variable "lc_security_groups" {
  description = ""
  type        = "list"
}

variable "lc_user_data" {
  description = "User Data script for launch configuration"
  default = ""
}


# Autoscaling group

variable "asg_count" { default = 1 }

variable "asg_name" {
  description = "Autoscaling group name"
}

variable "asg_desired_capacity" {
    description = "Desired capacity for the autoscaling group"
    default     = 0
}

variable "asg_min_size" {
    description = "Minimum capacity for the autoscaling group"
    default     = 0
}

variable "asg_max_size" {
    description = "Maximum capacity for the autoscaling group"
    default     = 0
}

variable "availability_zones" {
  type = "list"
}

variable "asg_load_balancers" {
  description = "Load balancers"
  default     = []
}


