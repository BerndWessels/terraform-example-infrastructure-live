variable "frontend-server_port" {
  description = "The port the server will use for HTTP requests"
  default = 8080
}
variable "frontend-min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  default = 2
}
variable "frontend-max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  default = 4
}
variable "backend-name" {
  description = "The backend service instance name"
  default = "backendo"
}
