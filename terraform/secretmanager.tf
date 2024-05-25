resource "aws_secretsmanager_secret" "secret" {
  name = "secret-manager"
}

resource "aws_secretsmanager_secret_version" "example" {
  secret_id     = aws_secretsmanager_secret.secret.id
  secret_string = jsonencode(var.credentials)
}