resource "aws_secretsmanager_secret" "example" {
  name = var.secret_name

  tags = {
    env = "dev"
  }
}

resource "aws_secretsmanager_secret_rotation" "example" {
  secret_id           = aws_secretsmanager_secret.example.id
  rotation_lambda_arn = local.rotation_lambda_arn

  rotation_rules {
    automatically_after_days = 30
  }
}