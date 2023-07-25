
provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket = "terraform-project-private-bucket"

  versioning {
    enabled = var.versioning
  }
}


resource "aws_dynamodb_table" "my_dynamo_table" {
  name         = "terraform-dynamodb-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "main"
  attribute {
    name = "main"
    type = "S"
  }
}