variable "stage_name" {
  type    = string
  default = ""
}

variable "prefix_role" {
  type    = string
  default = ""
}

variable "prefix_parent" {
  type    = string
  default = ""
}

variable "db_name" {
  type    = string
  default = ""
}

variable "db_user" {
  type    = string
  default = ""
}

variable "db_pass" {
  type = string
}

variable "filepath_parent" {
  type    = string
  default = "../faas/lambda-parent.zip"
}

variable "prefix_child_01" {
  type    = string
  default = ""
}

variable "filepath_child_01" {
  type    = string
  default = "../faas/lambda-child01.zip"
}

variable "prefix_child_02" {
  type    = string
  default = ""
}

variable "filepath_child_02" {
  type    = string
  default = "../faas/lambda-child02.zip"
}

variable "api_gateway_name" {
  type    = string
  default = ""
}

variable "lambda_role_name" {
  type    = string
  default = ""
}

variable "lambda_policy_name" {
  type    = string
  default = ""
}

variable "lambda_function_name" {
  type    = string
  default = ""
}

variable "environment_variables_parent" {
  type = map(string)
}

variable "environment_variables_child01" {
  type = map(string)
}

variable "environment_variables_child02" {
  type = map(string)
}

