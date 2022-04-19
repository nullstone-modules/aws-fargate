resource "aws_ecs_cluster" "this" {
  name = local.resource_name
  tags = local.tags
}
