resource "aws_s3_bucket" "datalake_bucket" {
  bucket = "datalake-${data.aws_caller_identity.current.account_id}"
}

resource "aws_s3_bucket_acl" "datalake_bucket_acl" {
  bucket = aws_s3_bucket.datalake_bucket.id
  acl    = "private"
}

