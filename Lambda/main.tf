resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr" {
  architectures      = ["x86_64"]
  description        = "This lambda function counts X seconds and can be used to slow down component creation in CloudFormation"

  environment {
    variables {
      LOG_LEVEL = "INFO"
      SECONDS   = "2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr"
  handler                        = "timer.lambda_handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/KenyaProd-AWSWAFSecurityAuto-LambdaRoleCustomTimer-1VFYF9A6WC31P"
  runtime                        = "python3.8"
  skip_destroy                   = false
  source_code_hash               = "C/IdQ+SVunOfzsZQ3Wd2M7YL8Oy5O5/C6bf5S7E0pnY="
  timeout                        = 300

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-Metabase-Start-Stop" {
  architectures      = ["x86_64"]

  ephemeral_storage {
    size = 512
  }

  function_name                  = "Metabase-Start-Stop"
  handler                        = "lambda_function.lambda_handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/Metabase-Start-Stop"
  runtime                        = "python3.8"
  skip_destroy                   = false
  source_code_hash               = "Si3ZqN3QrSaNMHcRHZrFtYaRjPfpinSHekpqRWSm7LA="
  timeout                        = 3

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-admin-authorized-lambdafunction-prod-primer-VPeTvcXx2MvA" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "admin-authorized-lambdafunction-prod-primer-VPeTvcXx2MvA"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "o6qVlU0rcqeoQeZnTPG4ECmFyOhhtMz8cvVRHgGFe3Y="
  timeout                        = 3

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-auto-start-stop-services" {
  architectures      = ["x86_64"]

  ephemeral_storage {
    size = 512
  }

  function_name                  = "auto-start-stop-services"
  handler                        = "lambda_function.lambda_handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/service-role/auto-start-stop-services-role-kzr0kalj"
  runtime                        = "python3.11"
  skip_destroy                   = false
  source_code_hash               = "bF8NSX6SjoMZVBNn4jQHbXFzpQh6LlVaylcUUMoQBIs="
  timeout                        = 30

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-baseline-overrides-bcd8-gj7vw" {
  architectures      = ["x86_64"]
  description        = "Lambda function that responds to Delete and Create events from CloudFormation or performs baseline remediation when triggered by the State Manager Association executing the Automation Document"

  environment {
    variables {
      REGION = "eu-west-2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "baseline-overrides-bcd8-gj7vw"
  handler                        = "index.lambda_handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/AWS-QuickSetup-BaselineOverrides-LambdaRole-gj7vw"
  runtime                        = "python3.9"
  skip_destroy                   = false
  source_code_hash               = "rBFQVRJqBJ0cx4jpOKP9+iaV8R+w9qhBKof3Bz+cYgY="

  tags = {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  timeout = 300

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-create-custom-email-lambdafunction-prod-primer-iElqLZgjX4Wq" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "create-custom-email-lambdafunction-prod-primer-iElqLZgjX4Wq"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "Lsd4Kd8vDTrVCW9CaSBpn7wkD1m5yGZ9O6Pwi8GzEbM="
  timeout                        = 3

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-create-customauth-challenge-prod-primer-7RDMbZWnyQCe" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "create-customauth-challenge-prod-primer-7RDMbZWnyQCe"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "kipmT/cCH2CsZTY6Wmy82MNbkgi/Bti8Z9IVK0oNByU="
  timeout                        = 10

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-define-custom-lambda-function-prod-primer-k6wo2wf6BORP" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "define-custom-lambda-function-prod-primer-k6wo2wf6BORP"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "1BWq3yj53CspTkt/tInZ9aaVhli/beupQX92TwF3QyE="
  timeout                        = 10

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-delete-name-tags-eu-west-2-bcd8-gj7vw" {
  architectures      = ["x86_64"]
  description        = "Lambda for handling CF 'Delete' events to remove the name tags from resources."

  environment {
    variables {
      REGION = "eu-west-2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = "delete-name-tags-eu-west-2-bcd8-gj7vw"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/AWS-QuickSetup-PatchPolicy-RoleForLambda-NT-eu-west-2-gj7vw"
  runtime                        = "python3.9"
  skip_destroy                   = false
  source_code_hash               = "IlhT9/K/4VMjNCqomVJAQbNcGJc6HuO49w0VDA2QMBo="

  tags = {
    QuickSetupID      = "gj7vw"
    QuickSetupType    = "Patch Manager"
    QuickSetupVersion = "1.3"
  }

  timeout = 900

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-presign-lambdafunction-prod-primer-bYLh5pvHFzb9" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "presign-lambdafunction-prod-primer-bYLh5pvHFzb9"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "smOSlmRCMSQoE8l439OgvHZcY0zrDUde9gsuOK6+qHg="
  timeout                        = 3

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-sftp-create" {
  architectures      = ["x86_64"]

  ephemeral_storage {
    size = 512
  }

  function_name                  = "sftp-create"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/service-role/sftp-create-role-3m7e7iso"
  runtime                        = "nodejs18.x"
  skip_destroy                   = false
  source_code_hash               = "edLy5FV2sNAPb038kdtY/mpwzenr0nEXsu82xE+zC38="
  timeout                        = 3

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-sftp-delete" {
  architectures      = ["x86_64"]

  ephemeral_storage {
    size = 512
  }

  function_name                  = "sftp-delete"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/service-role/sftp-delete-role-ixdemiou"
  runtime                        = "nodejs18.x"
  skip_destroy                   = false
  source_code_hash               = "tp3KHUykgAIPRKijqoCOjSRF2iQcxD1uiveKA2xTQDo="
  timeout                        = 3

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-verify-custom-lambda-function-prod-primer-3e490yYdFEo8" {
  architectures      = ["x86_64"]
  description        = "Invoke a function during stack creation."

  ephemeral_storage {
    size = 512
  }

  function_name                  = "verify-custom-lambda-function-prod-primer-3e490yYdFEo8"
  handler                        = "index.handler"
  memory_size                    = 128
  package_type                   = "Zip"
  reserved_concurrent_executions = -1
  role                           = "arn:aws:iam::766176144542:role/prod-lambda-role"
  runtime                        = "nodejs12.x"
  skip_destroy                   = false
  source_code_hash               = "HLP6AMTMdXuhTOX6laGuExu98q3vv0aAt0e9bwVsBK4="
  timeout                        = 10

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_permission" "ac--AWSEvents_deactivate-inactive-iam-users_Id9086de7d-0761-4ecd-8ff6-a3d39b21a02b" {
  action        = "lambda:InvokeFunction"
  function_name = "disable-inactive-iam-users"
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:eu-west-2:766176144542:rule/deactivate-inactive-iam-users"
  statement_id  = "AWSEvents_deactivate-inactive-iam-users_Id9086de7d-0761-4ecd-8ff6-a3d39b21a02b"
}

resource "aws_lambda_permission" "ac--CSI_createAuthChallenge_eu-west-2KqPCe7suN_CSI_createAuthChallenge" {
  action        = "lambda:InvokeFunction"
  function_name = "create-customauth-challenge-prod-primer-7RDMbZWnyQCe"
  principal     = "cognito-idp.amazonaws.com"
  source_arn    = "arn:aws:cognito-idp:eu-west-2:766176144542:userpool/eu-west-2_KqPCe7suN"
  statement_id  = "CSI_createAuthChallenge_eu-west-2KqPCe7suN_CSI_createAuthChallenge"
}

resource "aws_lambda_permission" "ac--CSI_defineAuthChallenge_eu-west-2KqPCe7suN_CSI_defineAuthChallenge" {
  action        = "lambda:InvokeFunction"
  function_name = "define-custom-lambda-function-prod-primer-k6wo2wf6BORP"
  principal     = "cognito-idp.amazonaws.com"
  source_arn    = "arn:aws:cognito-idp:eu-west-2:766176144542:userpool/eu-west-2_KqPCe7suN"
  statement_id  = "CSI_defineAuthChallenge_eu-west-2KqPCe7suN_CSI_defineAuthChallenge"
}

resource "aws_lambda_permission" "ac--CSI_preSignUp_eu-west-2KqPCe7suN_CSI_preSignUp" {
  action        = "lambda:InvokeFunction"
  function_name = "presign-lambdafunction-prod-primer-bYLh5pvHFzb9"
  principal     = "cognito-idp.amazonaws.com"
  source_arn    = "arn:aws:cognito-idp:eu-west-2:766176144542:userpool/eu-west-2_KqPCe7suN"
  statement_id  = "CSI_preSignUp_eu-west-2KqPCe7suN_CSI_preSignUp"
}

resource "aws_lambda_permission" "ac--CSI_verifyAuthChallengeResponse_eu-west-2KqPCe7suN_CSI_verifyAuthChallengeResponse" {
  action        = "lambda:InvokeFunction"
  function_name = "verify-custom-lambda-function-prod-primer-3e490yYdFEo8"
  principal     = "cognito-idp.amazonaws.com"
  source_arn    = "arn:aws:cognito-idp:eu-west-2:766176144542:userpool/eu-west-2_KqPCe7suN"
  statement_id  = "CSI_verifyAuthChallengeResponse_eu-west-2KqPCe7suN_CSI_verifyAuthChallengeResponse"
}

resource "aws_lambda_permission" "ac--lambda-1e2e19c3-d11e-42a8-955c-df99bab4f3e0" {
  action        = "lambda:InvokeFunction"
  function_name = "Metabase-Start-Stop"
  principal     = "events.amazonaws.com"
  source_arn    = "arn:aws:events:eu-west-2:766176144542:rule/Metabase"
  statement_id  = "lambda-1e2e19c3-d11e-42a8-955c-df99bab4f3e0"
}

resource "aws_lambda_permission" "ac--lambda-2e302ae6-bcf1-4c82-8c8d-428f23bc1813" {
  action         = "lambda:InvokeFunction"
  function_name  = "sftp-delete"
  principal      = "s3.amazonaws.com"
  source_account = "766176144542"
  source_arn     = "arn:aws:s3:::sftp.prod.solv.co.ke"
  statement_id   = "lambda-2e302ae6-bcf1-4c82-8c8d-428f23bc1813"
}

resource "aws_lambda_permission" "ac--lambda-5e52aeba-a7e0-4d49-87e5-e84e61db6a83" {
  action         = "lambda:InvokeFunction"
  function_name  = "sftp-create"
  principal      = "s3.amazonaws.com"
  source_account = "766176144542"
  source_arn     = "arn:aws:s3:::sftp.prod.solv.co.ke"
  statement_id   = "lambda-5e52aeba-a7e0-4d49-87e5-e84e61db6a83"
}
