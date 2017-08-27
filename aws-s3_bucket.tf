# https://www.terraform.io/docs/providers/aws/r/s3_bucket.html

resource "aws_s3_bucket" "sample_bucket" {
  bucket        = "bdgyzcip-123456789-sample-bucket"
  region        = "ap-northeast-1"
  acl           = "private"
}
