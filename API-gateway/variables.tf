variable "aws_api_gateway_documentation_part_properties" {
  default = "{\n  \"description\" : \"200 response\"\n}"
  type    = string
}

variable "aws_api_gateway_documentation_part_rest_api_id" {
  default = "4t79rwsi0m"
  type    = string
}

variable "aws_api_gateway_rest_api_api_key_source" {
  default = "HEADER"
  type    = string
}

variable "aws_api_gateway_rest_api_binary_media_types" {
  default = ["application/pdf", "application/x-www-form-urlencoded", "image/jpeg", "image/png", "multipart/form-data"]
  type    = list(string)
}

variable "aws_api_gateway_rest_api_disable_execute_api_endpoint" {
  default = false
  type    = bool
}

variable "aws_api_gateway_rest_api_minimum_compression_size" {
  default = -1
  type    = number
}

variable "aws_api_gateway_rest_api_name" {
  default = "prod-kenya-auth"
  type    = string
}

variable "aws_api_gateway_vpc_link_name" {
  default = "auth-api-gateway-vpc-link"
  type    = string
}

variable "aws_api_gateway_vpc_link_target_arns" {
  default = ["arn:aws:elasticloadbalancing:eu-west-2:766176144542:loadbalancer/net/a953ad6f802b345fe85f29d793a4e104/020ba1187374b56a"]
  type    = list(string)
}
