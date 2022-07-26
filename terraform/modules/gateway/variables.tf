variable "stage_name" {
  type    = string
  default = "develop"
}

variable "api_gateway_name" {
  type    = string
  default = "api-gateway"
}

variable "lambda_invoke_arn" {
  type    = string
  default = ""
}

variable "lambda_function_name" {
  type    = string
  default = ""
}
