provider "aws" {
  region = "ap-south-1"   # Mumbai region, change if needed
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = "rituappbucket"  # bucket name must be globally unique
  acl    = "private"
}

# Optional: Enable versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.demo_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}
