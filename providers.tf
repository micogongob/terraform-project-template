terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      project     = lower(var.project)
      environment = lower(var.environment)
      terraform   = "true"
    }
  }
}