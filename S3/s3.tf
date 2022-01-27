resource "aws_s3_bucket" "b" {
  bucket     = "my-tf-test-bucket-dilnaz"
  acl        = "private"
  versioning {
      enabled = true
  }

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Team        = "DevOps"
  }
}
