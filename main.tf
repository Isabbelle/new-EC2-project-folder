#it's ami for ubuntu not linux
data "aws_ami" "aws_linux_image" {
  owners      = [var.aws_ami_owner]
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

data "aws_subnet" "public_subnetOne" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnetOne_name]
  }
}

data "aws_subnet" "private_subnet_a"{
  filter{
    name   = "tag:Name"
   values=[var.private_subnet_a]
  }
}
data "aws_subnet" "private_subnet_b"{
  filter{
   name= "tag:Name"
   values=[var.private_subnet_b]
  }
}

data "aws_secretsmanager_secret" "movie_db_password" {
  arn = "movie-db-password"
}

data "aws_secretsmanager_secret_version" "movie_db_secret" {
  secret_id = data.aws_secretsmanager_secret.movie_db_secret.id
}
#instead of resource we use data source so we can gather info from AWS, downlading info from what we already have
