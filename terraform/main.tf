provider "aws" {
  region = "us-east-2"
}

module "lambda" {
  source                   = "./modules/lambda"
  lambda_role_name         = "${var.prefix}-${var.lambda_role_name}"
  lambda_policy_name       = "${var.prefix}-${var.lambda_policy_name}"
  lambda_function_name     = "${var.prefix}-${var.lambda_function_name}"
  lambda_function_filename = var.filepath
}

module "gateway" {
  source               = "./modules/gateway"
  stage_name           = var.stage_name
  api_gateway_name     = "${var.prefix}-${var.api_gateway_name}"
  lambda_invoke_arn    = module.lambda.out_lambda_invoke_arn
  lambda_function_name = module.lambda.out_lambda_function_name
  depends_on = [
    module.lambda
  ]
}

output "base_url" {
  value = "curl -X GET '${module.gateway.out_url}/api/v1/post'"
}
