resource "aws_lambda_function" "lambda_function" {
  filename      = var.lambda_function_filename
  function_name = var.lambda_function_name
  role          = var.lambda_role_arn
  handler       = "main"
  runtime       = "go1.x"
  environment {
    variables = {
      "API_SECRET" = "123456"
      "API_URL"    = "https://jsonplaceholder.typicode.com"
      "GIN_MODE"   = "debug"
    }
  }
}
