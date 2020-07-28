resource "aws_ecs_cluster" "this" {
  name = "${var.stack_name}-${var.block_name}-${var.env}"

  tags = {
    Stack       = var.stack_name
    Block       = var.block_name
    Environment = var.env
  }
}
