resource "aws_cognito_user_pool" "ac--solv-admin-userpool-Kenya" {

  admin_create_user_config {
    allow_admin_create_user_only = false
  }

  deletion_protection  = "INACTIVE"

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  lambda_config {
    user_migration      = "arn:aws:lambda:eu-west-2:766176144542:function:cognito-migration"
  }

  mfa_configuration = "OFF"
  name              = "solv-admin-userpool-Kenya"

  password_policy {
    minimum_length                   = 8
    require_lowercase                = true
    require_numbers                  = true
    require_symbols                  = true
    require_uppercase                = true
    temporary_password_validity_days = 7
  }

  schema {
    attribute_data_type          = "Boolean"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "phone_no_verified"
    required                     = false
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "companyId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "email"
    required                     = true

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "entityId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "name"
    required                     = true

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "smeId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "solvId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  username_attributes              = ["email"]

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
  }
}

resource "aws_cognito_user_pool" "ac--solv-connect-email-mobile-login-pool-kenya" {

  admin_create_user_config {
    allow_admin_create_user_only = false
  }

  deletion_protection  = "INACTIVE"

  email_configuration {
    email_sending_account = "COGNITO_DEFAULT"
  }

  lambda_config {
    create_auth_challenge          = "arn:aws:lambda:eu-west-2:766176144542:function:create-customauth-challenge-prod-primer-7RDMbZWnyQCe"
    define_auth_challenge          = "arn:aws:lambda:eu-west-2:766176144542:function:define-custom-lambda-function-prod-primer-k6wo2wf6BORP"
    pre_sign_up                    = "arn:aws:lambda:eu-west-2:766176144542:function:presign-lambdafunction-prod-primer-bYLh5pvHFzb9"
    verify_auth_challenge_response = "arn:aws:lambda:eu-west-2:766176144542:function:verify-custom-lambda-function-prod-primer-3e490yYdFEo8"
  }

  mfa_configuration = "OFF"
  name              = "solv-connect-email-mobile-login-pool-kenya"

  password_policy {
    minimum_length                   = 32
    require_lowercase                = false
    require_numbers                  = false
    require_symbols                  = false
    require_uppercase                = false
    temporary_password_validity_days = 365
  }

  schema {
    attribute_data_type          = "Boolean"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "phone_no_verified"
    required                     = false
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "companyId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "email"
    required                     = true

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "entityId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "name"
    required                     = true

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "phone_number"
    required                     = true

    string_attribute_constraints {
      max_length = "2048"
      min_length = "0"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "smeId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "solvId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  schema {
    attribute_data_type          = "String"
    developer_only_attribute     = false
    mutable                      = true
    name                         = "useruuId"
    required                     = false

    string_attribute_constraints {
      max_length = "256"
      min_length = "1"
    }
  }

  sms_authentication_message       = "Your authentication code is {####}. "
  username_attributes              = ["email", "phone_number"]

  verification_message_template {
    default_email_option = "CONFIRM_WITH_CODE"
    email_message        = "Your verification code is {####}. "
    email_subject        = "Your verification code"
    sms_message          = "Your verification code is {####}. "
  }
}
