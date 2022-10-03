terraform {
  backend "s3" {
    bucket         = "ta-terraform-tfstates-753146964827"
    key            = "projects/ec2/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}