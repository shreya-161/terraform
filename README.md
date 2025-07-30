# terraform

To RUN .tfvars file
terraform apply -var-file = "dev.tfvars" or "test.tfvars"


variable "bucket_name" {
  description = "value"
  type = map(string)

  default = {
    "dev" = "dev-bucket"
    "stage" = "stage-bucket"
  }
}

resource "aws_s3_bucket" "my-bucket"{
  name = lookup(var.bucket_name, terraform.workspace)
}
