resource "aws_db_instance" "myRds" {
  allocated_storage    = var.db_storage
  db_name              = var.db_name
  engine               = var.db_engine
  engine_version       = var.db_engine_version
  instance_class       = var.db_instance_class
  username             = var.db_username
  password             = jsondecode(nonsensitive(data.aws_secretsmanager_secret_version.movie_db_pw.secret_string))["movie_db_password"]

  skip_final_snapshot  = var.db_parameter_group_name
  db_subnet_group_name = aws_db_subnet_group.db_subnet_group.id
  vpc_security_group_ids = [aws_security_group.id]
  tags = {
    Name = "movie-management-rds"
  }
}


resource "aws_db_subnet_group" "aws_db_subnet_group" {
  name       = "movie-DB-subnet-group"
  subnet_ids = [data.aws_subnet.private_subnet_a.id, data.aws_subnet.private_subnet_b.id]

  tags = {
    Name = "My DB subnet group"
  }
}


