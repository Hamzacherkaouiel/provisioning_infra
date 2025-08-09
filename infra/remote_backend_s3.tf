terraform {
  backend "s3" {
    bucket = "bucket.devops1"
    key = "web-app/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "devops"
    encrypt        = true
  }
}