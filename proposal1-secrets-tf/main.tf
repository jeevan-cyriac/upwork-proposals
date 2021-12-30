resource "aws_secretsmanager_secret" "rotation-example" {
  name                = var.secret_name
  rotation_lambda_arn = local.rotation_lambda_arn

  rotation_rules {
    automatically_after_days = var.rotation_days
  }
}