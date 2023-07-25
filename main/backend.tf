terraform {
  
   backend "s3" {
      bucket         = "terraform-project-private-bucket"
      key            = "terraform.tfstate"
      region         = "ap-south-1"
      dynamodb_table = "terraform-dynamodb-table"

    }
}





