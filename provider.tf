terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
   namedotcom = {
      source = "lexfrei/namedotcom"
      version = "1.2.4"

}
  }
}
  provider "namedotcom" {
   token = var.token
   username = var.username
 }


provider "aws" {
  region                     = "us-east-1"
  shared_credentials_files = ["~/.aws/credentials"]
}
