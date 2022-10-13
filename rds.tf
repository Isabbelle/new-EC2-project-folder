resource "aws_db_instance" "myRds" {
  allocated_storage    = var.db_storage
  db_name              = var.db_name
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  username             = var.db_username
  password             = ""
  skip_final_snapshot  = var.db_parameter_group_name

  tags = {
    Name = "movie-management-rds"
  }
}


data "aws_db_subnet_group" "myRdsSubnet" {
  name       = "main"
  subnet_ids = aws_subnet.public_subnetOne.id

  tags = {
    Name = "My DB subnet group"
  }
