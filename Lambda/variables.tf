variable "aws_lambda_function_architectures" {
  default = ["x86_64"]
  type    = list(string)
}

variable "aws_lambda_function_description" {
  default = "Invoke a function during stack creation."
  type    = string
}

variable "aws_lambda_function_function_name" {
  default = "admin-authorized-lambdafunction-prod-primer-VPeTvcXx2MvA"
  type    = string
}

variable "aws_lambda_function_handler" {
  default = "index.handler"
  type    = string
}

variable "aws_lambda_function_memory_size" {
  default = 128
  type    = number
}

variable "aws_lambda_function_package_type" {
  default = "Zip"
  type    = string
}

variable "aws_lambda_function_reserved_concurrent_executions" {
  default = -1
  type    = number
}

variable "aws_lambda_function_role" {
  default = "arn:aws:iam::766176144542:role/prod-lambda-role"
  type    = string
}

variable "aws_lambda_function_runtime" {
  default = "nodejs12.x"
  type    = string
}

variable "aws_lambda_function_skip_destroy" {
  default = false
  type    = bool
}

variable "aws_lambda_function_source_code_hash" {
  default = "o6qVlU0rcqeoQeZnTPG4ECmFyOhhtMz8cvVRHgGFe3Y="
  type    = string
}

variable "aws_lambda_function_tags" {
  default {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  type = map(string)
}

variable "aws_lambda_function_timeout" {
  default = 3
  type    = number
}
