terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.27.0" #aws provider version, not terraform version.
    }
  }
}

provider "aws" {
  # Configuration options
}
