output "out_lambda_invoke_arn" {
  description = "Lambda invoke ARN"
  value       = aws_lambda_function.lambda_function.invoke_arn
}

output "out_lambda_function_name" {
  description = "Lambda Function Name"
  value       = aws_lambda_function.lambda_function.function_name
}
