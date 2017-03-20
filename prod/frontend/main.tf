module "frontend" {
  source = "git::git@github.com:BerndWessels/terraform-example-infrastructure-modules.git//frontend-app?ref=v0.0.1"
  min_size = "${var.min_size}"
  max_size = "${var.max_size}"
}
resource "aws_autoscaling_policy" "scale_out" {
  name = "frontend-scale-out"
  autoscaling_group_name = "${module.frontend.asg_name}"
  adjustment_type = "ChangeInCapacity"
  policy_type = "SimpleScaling"
  scaling_adjustment = 1
  cooldown = 200
}
