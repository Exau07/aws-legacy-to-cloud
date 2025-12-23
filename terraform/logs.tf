########################################
# CloudWatch Logs – FinOps
########################################

resource "aws_cloudwatch_log_group" "application" {
  name              = "/aws/legacy-to-cloud/application"

  # FinOps: éviter la rétention infinie (coût)
  retention_in_days = 14

  tags = {
    Project = var.project_name
    Purpose = "application-logs"
  }
}