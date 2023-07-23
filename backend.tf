
terraform {
  backend "s3" {
    bucket         = "my-private-bucket-mangesh"
    key            = "main"
    region         = "ap-south-1"
    dynamodb_table = "my-dynamodb-table"
  }
}
