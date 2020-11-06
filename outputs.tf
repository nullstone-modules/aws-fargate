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

output "network_block" {
  value       = data.ns_connection.network.block_name
  description = "string ||| "
}
