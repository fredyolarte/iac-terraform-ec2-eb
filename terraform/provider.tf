terraform {
  backend "s3" {
    bucket  = "utamsys-bucket-tf-states"
    key     = "global/environment-meilisearch-server-prod/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}


provider "aws" {
  region = "us-east-1"
}