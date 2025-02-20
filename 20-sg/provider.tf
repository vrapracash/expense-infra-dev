terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket          = "vrapracash-1"
    key             = "workspaces"
    region          = "us-east-1"
    dynamodb_table  = "vrapracash-1-table" 
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}