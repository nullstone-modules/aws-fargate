resource "aws_ecs_cluster" "this" {
  name = "${var.stack_name}-${var.env}-${var.block_name}"

  tags = {
    Stack       = var.stack_name
    Block       = var.block_name
    Environment = var.env
  }
}
