output "cluster_name" {
  value = aws_ecs_cluster.this.name
}

output "service_discovery_id" {
  value = aws_service_discovery_private_dns_namespace.service.id
}

output "cluster_execution_role_name" {
  value = aws_iam_role.execution.name
}
