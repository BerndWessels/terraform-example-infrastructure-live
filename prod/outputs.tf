output "frontend_dns" {
  value = "${module.frontend.frontend_elb_dns_name}"
}
