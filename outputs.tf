output "cluster_arn" {
  value       = aws_ecs_cluster.this.arn
  description = "string ||| AWS Arn for the Fargate cluster."
}

output "cluster_name" {
  value       = aws_ecs_cluster.this.name
  description = "string ||| Name of the Fargate cluster."
}

output "deployers_name" {
  value       = aws_iam_group.deployers.name
  description = "string ||| Name of the deployers IAM Group that is allowed to deploy to the Fargate cluster."
}

output "deployers_policy_name" {
  value       = aws_iam_policy.deployers.name
  description = "string ||| Name of the deployers IAM Policy that is allowed to deploy to the Fargate cluster."
}

output "deployers_policy_arn" {
  value       = aws_iam_policy.deployers.arn
  description = "string ||| ARN of the deployers IAM Policy that is allowed to deploy to the Fargate cluster."
}

output "log_retention_in_days" {
  value       = var.log_retention_in_days
  description = "number ||| The retention period for the CloudWatch logs for each Fargate service in this cluster."
}
