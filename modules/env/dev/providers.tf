terraform {
  required_version = ">= 1.3.3"

  backend "s3" {
    bucket         = "bradduplocloud1234567890-nonprod"
    dynamodb_table = "dev-statefile-lock"
    key            = "terraform-state-files/dev/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.83"
    }
  }

}

provider "aws" {
  region = "us-east-2"
}

  

