data "aws_ami" "aws_basic_linux" {
  owners      = [var.aws_owner_id]
  most_recent = true
  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }
}

data "aws_vpc" "main_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "subnet"{
    filter{
        name="tag:Name"
        values=[var.public_subnetOne_name]
    }
}

#instead of resource we use data source so we can gather info from AWS, downlading info from what we already have
