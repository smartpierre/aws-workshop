resource "aws_s3_bucket_public_access_block" "figures-sandbox-changeme-euw3" {
  bucket = aws_s3_bucket.figures-sandbox-changeme-euw3.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
resource "aws_s3_bucket_acl" "figures-sandbox-changeme-euw3" {
  bucket = aws_s3_bucket.figures-sandbox-changeme-euw3.id
  acl    = "private"
}