terraform {
  backend "s3" {
    bucket = "bucket.devops1"
    key = "web-app/terraform.tfstate"
    region         = "us-west-1"
    dynamodb_table = "devops2"
    encrypt        = true
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}