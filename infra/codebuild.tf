resource "aws_codebuild_project" "ygo_build" {
  name         = "ygo-build"
  description  = "The codebuild to build the ygo project."
  service_role = aws_iam_role.svc_ygo_codebuild.arn

  build_timeout = 5

  source {
    type = "CODEPIPELINE"
  }

  environment {
    type         = "LINUX_CONTAINER"
    compute_type = "BUILD_GENERAL1_SMALL"
    image        = "aws/codebuild/amazonlinux2-x86_64-standard:2.0"
  }

  artifacts {
    type                = "CODEPIPELINE"
    artifact_identifier = "ygo-artifact"

  }

  logs_config {
    cloudwatch_logs {
      group_name = "/ygo/infra/codebuild"
    }
  }

}

resource "aws_iam_role" "svc_ygo_codebuild" {
  name = "svc-ygo-codebuild"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy" "ygo_codebuild_policy" {
  role = aws_iam_role.svc_ygo_codebuild.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ]
    },
    {
      "Effect": "Allow",
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeDhcpOptions",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeSubnets",
        "ec2:DescribeSecurityGroups",
        "ec2:DescribeVpcs"
      ],
      "Resource": "*"
    }
  ]
}
POLICY
}