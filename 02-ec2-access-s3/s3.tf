resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket-1999-080698"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}