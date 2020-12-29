resource "aws_service_discovery_private_dns_namespace" "service" {
  name = "service"
  vpc  = data.ns_connection.network.outputs.vpc_id
  tags = data.ns_workspace.this.tags
}
