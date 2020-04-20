resource "aws_s3_bucket" "dev4" {
  bucket = "lowbit-dev4"
  acl    = "private"

  tags = {
    Name = "lowbit-dev4"
  }
}
