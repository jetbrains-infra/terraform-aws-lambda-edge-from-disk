resource "aws_lambda_function" "lambda" {
  filename         = local.lambda_archive
  function_name    = local.name
  role             = aws_iam_role.lambda.arn
  handler          = local.handler_name
  source_code_hash = filebase64sha256(local.lambda_archive)
  runtime          = local.runtime
  publish          = "true"
  provider         = aws.us
}