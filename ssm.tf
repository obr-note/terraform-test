resource "aws_ssm_parameter" "db_username" {
  name = "/db/username"
  value = "root"
  type = "String"
  description = "データベースのユーザー名"
}

resource "aws_ssm_parameter" "db_row_password" {
  name = "/db/db_row_password"
  value = "VeryStrongPassword"
  type = "SecureString"
  description = "データベースのユーザー名"
}

resource "aws_ssm_parameter" "db_password" {
  name = "/db/password"
  value = "uninitialized"
  type = "SecureString"
  description = "データベースのユーザー名"

  lifecycle {
    ignore_changes = [value]
  }
}
