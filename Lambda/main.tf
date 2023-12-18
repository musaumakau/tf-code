resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-KenyaProd-AWSWAFSecurityAutomations-CustomTimer-zftJodFlImXr" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  environment {
    variables {
      LOG_LEVEL = "INFO"
      SECONDS   = "2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-Metabase-Start-Stop" {
  architectures      = var.aws_lambda_function_architectures

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-admin-authorized-lambdafunction-prod-primer-VPeTvcXx2MvA" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-auto-start-stop-services" {
  architectures      = var.aws_lambda_function_architectures

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-baseline-overrides-bcd8-gj7vw" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  environment {
    variables {
      REGION = "eu-west-2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  tags                           = var.aws_lambda_function_tags
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-create-custom-email-lambdafunction-prod-primer-iElqLZgjX4Wq" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-create-customauth-challenge-prod-primer-7RDMbZWnyQCe" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-define-custom-lambda-function-prod-primer-k6wo2wf6BORP" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-delete-name-tags-eu-west-2-bcd8-gj7vw" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  environment {
    variables {
      REGION = "eu-west-2"
    }
  }

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  tags                           = var.aws_lambda_function_tags
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-presign-lambdafunction-prod-primer-bYLh5pvHFzb9" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-sftp-create" {
  architectures      = var.aws_lambda_function_architectures

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-sftp-delete" {
  architectures      = var.aws_lambda_function_architectures

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "PassThrough"
  }

}

resource "aws_lambda_function" "ac--arn-003A-aws-003A-lambda-003A-eu-west-2-003A-766176144542-003A-function-003A-verify-custom-lambda-function-prod-primer-3e490yYdFEo8" {
  architectures      = var.aws_lambda_function_architectures
  description        = var.aws_lambda_function_description

  ephemeral_storage {
    size = 512
  }

  function_name                  = var.aws_lambda_function_function_name
  handler                        = var.aws_lambda_function_handler
  memory_size                    = var.aws_lambda_function_memory_size
  package_type                   = var.aws_lambda_function_package_type
  reserved_concurrent_executions = var.aws_lambda_function_reserved_concurrent_executions
  role                           = var.aws_lambda_function_role
  runtime                        = var.aws_lambda_function_runtime
  skip_destroy                   = var.aws_lambda_function_skip_destroy
  source_code_hash               = var.aws_lambda_function_source_code_hash
  timeout                        = var.aws_lambda_function_timeout

  tracing_config {
    mode = "Active"
  }

}
