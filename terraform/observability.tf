# ======================
# Log Group CloudWatch
# ======================
resource "aws_cloudwatch_log_group" "application" {
  name              = "/aws/${var.project_name}/application"
  retention_in_days = 14

  tags = {
    Project = var.project_name
  }
}