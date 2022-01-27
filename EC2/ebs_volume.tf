resource "aws_ebs_volume" "EBS" {
  availability_zone = "us-east-1a"
  size              = 40
  encrypted         = true
  tags              = local.common_tags
}