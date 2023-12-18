variable "aws_cognito_user_pool_deletion_protection" {
  default = "INACTIVE"
  type    = string
}

variable "aws_cognito_user_pool_mfa_configuration" {
  default = "OFF"
  type    = string
}

variable "aws_cognito_user_pool_name" {
  default = "solv-connect-email-mobile-login-pool-kenya"
  type    = string
}

variable "aws_cognito_user_pool_sms_authentication_message" {
  default = "Your authentication code is {####}. "
  type    = string
}

variable "aws_cognito_user_pool_username_attributes" {
  default = ["email", "phone_number"]
  type    = set(string)
}
