resource "aws_iam_group" "deployers" {
  name = "deployers-${local.resource_name}"
  tags = local.tags
}

resource "aws_iam_group_policy" "deployers" {
  name   = "deployers-${local.resource_name}"
  group  = aws_iam_group.deployers.id
  policy = data.aws_iam_policy_document.deployer.json
}
