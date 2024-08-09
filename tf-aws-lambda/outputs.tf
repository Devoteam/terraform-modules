output "arn" {
  description = "The lambda ARN"
  value       = aws_lambda_function.this[0].arn
}

output "invoke_arn" {
  description = "The lambda invoke ARN"
  value       = aws_lambda_function.this[0].invoke_arn
}

output "function_name" {
  description = "The lambda name"
  value       = aws_lambda_function.this[0].function_name
}

output "role_name" {
  description = "The lambda IAM role name"
  value       = aws_iam_role.this[0].name
}

output "role_arn" {
  description = "The lambda IAM role ARN"
  value       = aws_iam_role.this[0].arn
}
