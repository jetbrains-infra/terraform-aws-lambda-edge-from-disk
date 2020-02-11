variable "archive_path" {}
variable "name" {
  description = "Function name."
}
variable "handler_name" {
  description = "Handler name prefix. E.g. 'method' will be turnd into 'method.handler' as lambda function handler."
}
variable "memory_limit" {
  default = "128"
}
variable "timeout" {
  default = "10"
}

locals {
  name           = var.name
  handler_name   = var.handler_name
  lambda_archive = var.archive_path
  memory_limit   = var.memory_limit
  timeout        = var.timeout
}