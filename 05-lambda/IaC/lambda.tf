resource "aws_lambda_function" "rest_lambda" {
  function_name = var.rest_function_name
  role = aws_iam_role.iam_for_lambda.arn
  handler = "in.avabodha.java.app.DemoRestHandler::handleRequest"
  runtime = "java8"
  s3_bucket = var.s3_bucket
  s3_key = var.s3_key
  depends_on = [
    aws_iam_role_policy_attachment.lambda_logs,
    aws_cloudwatch_log_group.log_group_1,
  ]
}

resource "aws_lambda_function" "event_lambda" {
  function_name = var.event_function_name
  role = aws_iam_role.iam_for_lambda.arn
  handler = "in.avabodha.java.app.DemoSQSHandler::handleRequest"
  runtime = "java8"
  s3_bucket = var.s3_bucket
  s3_key = var.s3_key
  depends_on = [
    aws_iam_role_policy_attachment.lambda_logs,
    aws_cloudwatch_log_group.log_group_2,
  ]
}


resource "aws_cloudwatch_log_group" "log_group_1" {
  name              = "/aws/lambda/${var.rest_function_name}"
  retention_in_days = 14
}

resource "aws_cloudwatch_log_group" "log_group_2" {
  name              = "/aws/lambda/${var.event_function_name}"
  retention_in_days = 14
}