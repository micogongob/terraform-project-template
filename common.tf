## providers
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

## backend
terraform {
  backend "s3" {
    key = "terraform-project-template/terraform.tfstate"
  }
}

# variables
variable "project" {
  type    = string
  default = "terraform-project-template"
}

variable "environment" {
  type = string
}

variable "region" {
  type = string
}

## locals
locals {
  name_prefix = "${lower(var.environment)}-${lower(var.project)}"
}
