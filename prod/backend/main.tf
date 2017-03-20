module "backend" {
  source = "git::git@github.com:BerndWessels/terraform-example-infrastructure-modules.git//backend-service?ref=v0.0.2"
  name = "${var.name}"
}
