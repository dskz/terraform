resource "aws_iam_policy" "policy" {
  name        = "admins_policy"
  path        = "/"
  description = "Admins policy"
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}
EOF
}

resource "aws_iam_policy_attachment" "test-attach" {
  name       = "test-attachment"
  groups     = [aws_iam_group.admins.name]
  policy_arn = aws_iam_policy.policy.arn
}