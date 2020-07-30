resource "aws_service_discovery_private_dns_namespace" "service" {
  name = "service"
  vpc  = data.terraform_remote_state.network.outputs.vpc_id

  tags = {
    Stack       = var.stack_name
    Environment = var.env
    Block       = var.block_name
  }
}
