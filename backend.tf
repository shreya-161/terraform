terraform {
  backend "s3" {
    bucket         = "state-bucket" # change this
    key            = "terraform/terraform.tfstate"
    region         = "us-east-1"
  }
}
