provider "aws" {
  region = "us-east-2"
}

module "iam" {
  source             = "./modules/iam"
  lambda_role_name   = "${var.prefix_role}-${var.lambda_role_name}"
  lambda_policy_name = "${var.prefix_role}-${var.lambda_policy_name}"
}

module "rds" {
  source  = "./modules/rds"
  db_name = var.db_name
  db_user = var.db_user
  db_pass = var.db_pass
}

module "lambda" {
  source                   = "./modules/lambda"
  lambda_function_name     = "${var.prefix_parent}-${var.lambda_function_name}"
  lambda_function_filename = var.filepath_parent
  lambda_role_arn          = module.iam.out_lambda_role_arn
  environment_variables    = var.environment_variables_parent
}

module "lambda_child_01" {
  source                   = "./modules/lambda"
  lambda_function_name     = "${var.prefix_child_01}-${var.lambda_function_name}"
  lambda_function_filename = var.filepath_child_01
  lambda_role_arn          = module.iam.out_lambda_role_arn
  environment_variables    = var.environment_variables_child01
}

module "lambda_child_02" {
  source                   = "./modules/lambda"
  lambda_function_name     = "${var.prefix_child_02}-${var.lambda_function_name}"
  lambda_function_filename = var.filepath_child_02
  lambda_role_arn          = module.iam.out_lambda_role_arn
  environment_variables    = var.environment_variables_child02
}

module "gateway" {
  source               = "./modules/gateway"
  stage_name           = var.stage_name
  api_gateway_name     = "${var.prefix_parent}-${var.api_gateway_name}"
  lambda_invoke_arn    = module.lambda.out_lambda_invoke_arn
  lambda_function_name = module.lambda.out_lambda_function_name
  depends_on = [
    module.lambda
  ]
}

output "base_url" {
  value = "curl -X GET '${module.gateway.out_url}/api/v1/posts'"
}
