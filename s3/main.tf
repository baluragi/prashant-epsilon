# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "prash_log_bucket" {
  bucket = "prash-tf-log-bucket"
  acl    = "log-delivery-write"
}

resource "aws_s3_bucket" "prash_s3_bucket" {
  bucket = "prash-bucket-06082021"
  acl    = "private"
  versioning {
    enabled = true
  }
  tags = {
    Name = "prash-Bucket"
    BU   = "prash-Finance"
  }
  logging {
    target_bucket = aws_s3_bucket.prash_log_bucket.id
    target_prefix = "log/"
  }
}