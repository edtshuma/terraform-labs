# --identity/main.tf--

resource "aws_iam_group" "developers" {
  name = "developers"
  
}


resource "aws_iam_policy" "developers_lambda_policy" {
  name        = "developers-lambda-policy"
  description = "xxx"
  policy      = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "lambda:Get*",
                "lambda:List*",
                "lambda:Create*",
                "lambda:Update*",
                "lambda:DeleteFunction",
                "lambda:PublishVersion",
                "lambda:CreateAlias",
                "lambda:UpdateAlias",
                "lambda:DeleteAlias",
                "lambda:GetFunctionConfiguration",
                "lambda:InvokeFunction"
            ],
            "Resource": "*"
        }
    ]
 })
  tags = {
    "createdby" = "terraform"
  }
}

data "aws_iam_policy_document" "developers_policy" {
  statement {
    sid = "AllowLimitedS3Access"

    effect = "Allow"

    actions = [
      "s3:ListBucket",
      "s3:GetObject",
      "s3:PutObject"
    ]

    resources = [
      "arn:aws:s3:::react-golide",
      "arn:aws:s3:::react-golide/*"
    ]
  }
  statement {
    sid = "AllowLimitedEC2Access"

    effect = "Allow"

    actions = [
      "ec2:DescribeInstances"
    ]

    resources = [
      "arn:aws:ec2:*:*:instance/*"
    ]
  }
}
