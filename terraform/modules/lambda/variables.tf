variable "lambda_role_name" {
  type    = string
  default = "lambda-role"
}

variable "lambda_policy_name" {
  type    = string
  default = "policy-role"
}

variable "lambda_function_name" {
  type    = string
  default = "lambda-function"
}

variable "lambda_function_filename" {
  type    = string
  default = "../../faas.zip"
}
