resource "aws_iam_user" "deployer" {
  name = "deployer-${local.resource_name}"
  tags = data.ns_workspace.this.tags
}

resource "aws_iam_access_key" "deployer" {
  user = aws_iam_user.deployer.name
}

// The actions listed are necessary to perform actions to deploy ECS service
resource "aws_iam_user_policy" "deployer" {
  name   = "AllowECSDeploy"
  user   = aws_iam_user.deployer.name
  policy = data.aws_iam_policy_document.deployer.json
}
