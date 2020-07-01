output "app-endpoint" {
  value = module.demo_elb.elb_dns_name
}