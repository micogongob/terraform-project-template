terraform {
  backend "s3" {
    key = "terraform-project-template/terraform.tfstate"
  }
}