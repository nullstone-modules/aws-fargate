variable "log_retention_in_days" {
  type        = number
  default     = 365
  description = <<EOF
This defines the retention period for the CloudWatch logs for each Fargate service in this cluster.
EOF

  validation {
    condition     = var.log_retention_in_days >= 1
    error_message = "log_retention_in_days must be at least 1 day"
  }
}

variable "executions_retention_in_days" {
  type        = number
  default     = 90
  description = <<EOF
The number of days to keep ECS task state-change events for this cluster.
This is how far back Nullstone can show execution history for task apps.
EOF

  validation {
    condition     = var.executions_retention_in_days >= 1
    error_message = "executions_retention_in_days must be at least 1 day"
  }
}
