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
    values = [var.main_vpc]
  }
}

data "aws_subnet" "subnet"{
    filter{
        name="tag:Name"
        values=[var.publicSubnetOne]
    }
}