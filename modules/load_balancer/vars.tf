
variable "elb_name" {}

variable "backend_port" {}

variable "backend_protocol" {}

variable "frontend_port" {}

variable "frontend_protocol" {}

variable "health_check_target" {}

variable "healthy_threshold" {
  default = "2"
}

variable "unhealthy_threshold" {
  default = "2"
}

variable "timeout" {
  default = "3"
}

variable "interval" {
  default = "10"
}

variable "availability_zones" {
  type = "list"
}

variable "tags" {}
