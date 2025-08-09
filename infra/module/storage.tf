resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.s3_name
  lifecycle {
    prevent_destroy = true
  }
}
resource "aws_s3_bucket_ownership_controls" "owner" {
  bucket = aws_s3_bucket.s3_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
resource "aws_s3_bucket_public_access_block" "access" {
  bucket = aws_s3_bucket.s3_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}
resource "aws_s3_bucket_policy" "allow_users" {
  bucket = aws_s3_bucket.s3_bucket.id
  policy = data.aws_iam_policy_document.public_read_policy.json
}
data "aws_iam_policy_document" "public_read_policy" {
  statement {
    sid     = "AllowPublicReadAccess"
    effect  = "Allow"
    actions = ["s3:GetObject"]

    principals {
      type        = "*"
      identifiers = ["*"]
    }

    resources = [
      "${aws_s3_bucket.s3_bucket.arn}/*"
    ]
  }
}
