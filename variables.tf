variable "archive_path" {}
variable "name" {
  description = "Function name"
}
variable "handler_name" {
  description = "Handler name prefix. E.g. 'method' will be turned into 'method.handler' as lambda function handler"
}
variable "memory_limit" {
  default = "128"
}
variable "timeout" {
  default = "10"
}

variable "runtime" {
  default = "nodejs10.x"
  description = "Lambda runtime, see https://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html for more details"
}

locals {
  name           = var.name
  runtime        = var.runtime
  handler_name   = var.handler_name
  lambda_archive = var.archive_path
  memory_limit   = var.memory_limit
  timeout        = var.timeout
}