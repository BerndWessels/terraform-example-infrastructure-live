variable "server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}
variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  default = 2
}
variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  default = 4
}
