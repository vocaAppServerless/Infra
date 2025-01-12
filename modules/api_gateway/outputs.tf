output "api_endpoint" {
  value = aws_apigatewayv2_api.this.api_endpoint
}

output "arn" {
  value = aws_apigatewayv2_api.this.arn
}

output "name" {
  value = aws_apigatewayv2_api.this.name
}

output "id" {
  value = aws_apigatewayv2_api.this.id
}

output "execution_arn" {
  value = aws_apigatewayv2_api.this.execution_arn
}

output "invoke_url" {
  value = aws_apigatewayv2_stage.this.invoke_url
}