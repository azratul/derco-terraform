variable "lambda_function_name" {
  type    = string
  default = "lambda-function"
}

variable "lambda_function_filename" {
  type    = string
  default = "../../faas.zip"
}

variable "lambda_role_arn" {
  type    = string
  default = ""
}

variable "environment_variables" {
  type    = map(string)
  default = {}
}

