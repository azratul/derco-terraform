variable "stage_name" {
  type    = string
  default = ""
}

variable "prefix" {
  type    = string
  default = ""
}

variable "filepath" {
  type    = string
  default = "../faas/derco-backend.zip"
}

variable "api_gateway_name" {
  type    = string
  default = "api-gateway"
}

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
