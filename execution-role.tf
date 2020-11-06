resource "aws_iam_role" "execution" {
  name               = "${data.ns_workspace.this.hyphenated_name}-execution"
  assume_role_policy = data.aws_iam_policy_document.execution.json
  tags               = data.ns_workspace.this.tags
}

data "aws_iam_policy_document" "execution" {
  statement {
    sid     = "AllowECSAssume"
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ecs-tasks.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy_attachment" "execution-managed" {
  role       = aws_iam_role.execution.name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy"
}
