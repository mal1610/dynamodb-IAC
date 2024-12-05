provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "tfstate-malcolm-1610"
     
  lifecycle {
    prevent_destroy = true
  }
}

resource "aws_s3_bucket_versioning" "terraform_versioning" {
    bucket = aws_s3_bucket.terraform_state.id

    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "malcolm-tf-app-state"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}