variable "aws_config_config_rule_description" {
  default = "Checks if rule evaluates Application Load Balancers (ALBs) to ensure they are configured to drop http headers. The rule is NON_COMPLIANT if the value of routing.http.drop_invalid_header_fields.enabled is set to false."
  type    = string
}

variable "aws_config_config_rule_input_parameters" {
  default = "{}"
  type    = string
}

variable "aws_config_config_rule_maximum_execution_frequency" {
  default = "Twelve_Hours"
  type    = string
}

variable "aws_config_config_rule_name" {
  default = "securityhub-alb-http-drop-invalid-header-enabled-6514befb"
  type    = string
}
