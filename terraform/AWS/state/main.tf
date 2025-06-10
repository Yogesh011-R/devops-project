provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terafform-state" {
  bucket = "terafform-state-devops-project"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_versioning" "terafform-state-versioning" {
  bucket = aws_s3_bucket.terafform-state.id
  versioning_configuration {
    status = "Enabled"
  }

}

