resource "aws_ecs_cluster" "this" {
  name = data.ns_workspace.this.hyphenated_name
  tags = data.ns_workspace.this.tags
}
