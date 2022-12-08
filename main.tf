provider "aws" {
  region    = "us-east-1"
  profile   = "default"
}

module "aws-terraform-resources" {
  source = "./aws-terraform-resources"
  /* bucketName = var.bucketName */
}