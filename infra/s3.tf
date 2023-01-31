resource "aws_s3_bucket" "datalake_bucket" {
  bucket = "datalake-${data.aws_caller_identity.current.account_id}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}

resource "aws_s3_bucket_acl" "datalake_bucket_acl" {
  bucket = aws_s3_bucket.datalake_bucket.id
  acl    = "private"
}

