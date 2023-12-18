resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-0ajq91" {
  location {
    method      = "OPTIONS"
    path        = "/adminauth/scf-payment/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-0unxq6" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/otp/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-0vpt2z" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-invoicebod/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-18niyd" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-fiinvoicereconciliation/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-1z725o" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-onboard/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-3o9m0y" {
  location {
    method      = "*"
    path        = "/pauth/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-5840ez" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-notification/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-59bv0h" {
  location {
    method      = "OPTIONS"
    path        = "/adminauth/scf-finance/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-5d3kl9" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-payment/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-630acu" {
  location {
    method      = "POST"
    path        = "/wauth/-score-social"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-67cee2" {
  location {
    method      = "OPTIONS"
    path        = "/adminauth/scf-creditlimit/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-6pbv4x" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/bankstatement/result/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-7tdfxi" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/cognito-auth/v2/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-8rp0kj" {
  location {
    method      = "*"
    path        = "/wauth/customer-profile/api/v1/user/validate-email"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-8rtxg1" {
  location {
    method      = "OPTIONS"
    path        = "/adminauth/scf-api-routing/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-8ym33t" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-finance/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-91wgvi" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/cognito-auth/v3/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-96mc3w" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-fileupload/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-azs3rt" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-api-routing/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-bmw87a" {
  location {
    method      = "GET"
    path        = "/wauth/kyc-service/api/v1/onboarding-document/filter"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-c9xjqu" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/communication/sendEmail"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-cd84vs" {
  location {
    method      = "OPTIONS"
    path        = "/wauth/cognito-auth/v1/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_documentation_part" "ac--4t79rwsi0m-002F-cz2svv" {
  location {
    method      = "OPTIONS"
    path        = "/pauth/scf-limitbod/{proxy+}"
    status_code = "200"
    type        = "RESPONSE"
  }

  properties  = var.aws_api_gateway_documentation_part_properties
  rest_api_id = var.aws_api_gateway_documentation_part_rest_api_id
}

resource "aws_api_gateway_rest_api" "ac--4t79rwsi0m" {
  api_key_source               = var.aws_api_gateway_rest_api_api_key_source
  binary_media_types           = var.aws_api_gateway_rest_api_binary_media_types
  disable_execute_api_endpoint = var.aws_api_gateway_rest_api_disable_execute_api_endpoint

  endpoint_configuration {
    types = ["REGIONAL"]
  }

  minimum_compression_size = var.aws_api_gateway_rest_api_minimum_compression_size
  name                     = var.aws_api_gateway_rest_api_name
}

resource "aws_api_gateway_vpc_link" "ac--8mhr9i" {
  name        = var.aws_api_gateway_vpc_link_name
  target_arns = var.aws_api_gateway_vpc_link_target_arns
}
