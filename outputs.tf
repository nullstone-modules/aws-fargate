output "cluster_name" {
  value       = aws_ecs_cluster.this.name
  description = "string ||| "
}

output "service_discovery_id" {
  value       = aws_service_discovery_private_dns_namespace.service.id
  description = "string ||| "
}

output "cluster_execution_role_name" {
  value       = aws_iam_role.execution.name
  description = "string ||| "
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
