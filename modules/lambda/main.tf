resource "aws_lambda_function" "this" {
  function_name = var.function_name
  role          = var.role_arn
  filename      = var.filename
  layers        = var.layer_arns
  handler       = "${var.function_name}.handler"
  runtime       = var.runtime
  
  lifecycle {
    ignore_changes = [layers]
  }
}

resource "aws_lambda_permission" "this" {
  statement_id  = var.lambda_permission_statement_id
  action        = var.lambda_permission_action
  function_name = aws_lambda_function.this.function_name
  principal     = var.lambda_permission_principal
  source_arn    = var.lambda_permission_source_arn
}
