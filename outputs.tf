output "cluster_arn" {
  value       = aws_ecs_cluster.this.arn
  description = "string ||| AWS Arn for the Fargate cluster."
}

output "cluster_name" {
  value       = aws_ecs_cluster.this.name
  description = "string ||| Name of the Fargate cluster."
}

output "deployer" {
  value = {
    name       = aws_iam_user.deployer.name
    access_key = aws_iam_access_key.deployer.id
    secret_key = aws_iam_access_key.deployer.secret
  }

  description = "object({ name: string, access_key: string, secret_key: string }) ||| An AWS User with explicit privilege to deploy ECS services."

  sensitive = true
}
