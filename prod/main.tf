terraform {
  required_version = "0.9.1"
  backend "s3" {
    bucket = "my-terraform-bucket"
    key = "prod.terraform.tfstate"
    region = "us-east-1"
    profile = "terraform-example-prod"
    lock_table = "terraform-example-prod-lock"
  }
}
provider "aws" {
  region = "us-east-1"
  profile = "terraform-example-prod"
}
module "frontend" {
  source = "./frontend"
  server_port = "${var.frontend-server_port}"
  min_size = "${var.frontend-min_size}"
  max_size = "${var.frontend-max_size}"
}
module "backend" {
  source = "./backend"
  name = "${var.backend-name}"
}
