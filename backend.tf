terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-753146964827"
    key            = "project/movie-management/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}