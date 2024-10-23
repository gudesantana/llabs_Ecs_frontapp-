resource "aws_cloudwatch_log_group" "myapp_log_group" {
  name              = "/lg-ecs-app-${var.project_name}-${var.environment}"
  retention_in_days = 30

  tags = {
    Name = "cb-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "myapp_log_stream" {
  name           = "log-stream-app-${var.project_name}-${var.environment}"
  log_group_name = aws_cloudwatch_log_group.myapp_log_group.name
}