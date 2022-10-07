resource "aws_s3_bucket" "b" {
  bucket = "csye7125-bucket"
  /* bucket = "csye7125-bucket-harshal"
  bucket = "csye7125-bucket-shrawani" */

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.b.id
  acl    = "private"
}