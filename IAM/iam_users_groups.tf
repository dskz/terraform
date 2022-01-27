resource "aws_iam_user" "tom" {
  name = "tom"
}
resource "aws_iam_user" "kan" {
  name = "kan"
}

resource "aws_iam_user" "multiuser" {
  name = each.key
  for_each = toset([
    "bob",
    "sam",
    "lisa",
  ])
}

resource "aws_iam_group" "admins" {
  name = "admins"
}

resource "aws_iam_group_membership" "group_members" {
  name = "admins-group-membership"
  users = [aws_iam_user.tom.name,
  aws_iam_user.kan.name,
  ]
  group = aws_iam_group.admins.name
}
