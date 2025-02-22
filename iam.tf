
resource "aws_iam_policy" "ecs_user_policy" {
  name        = "ecs-user-policy"
  description = "ECS permissions for user"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ecs:ListClusters",
          "ecs:DescribeClusters",
          "ecs:ListServices",
          "ecs:DescribeServices",
          "ecs:CreateCluster",
          "ecs:DeleteCluster",
          "ecs:RunTask",
          "ecs:UpdateService",
          "ecs:DeleteService"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
      {
        Action = [
          "iam:PassRole"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}
