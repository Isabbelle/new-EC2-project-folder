resource "aws_db_instance" "myRds" {
  allocated_storage    = 20
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "passwOrd!"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  tags ={
    Name = "movie-management-rds"
  }
}


data "aws_db_subnet_group" "myRdsSubnet" {
  name       = "main"
  subnet_ids = aws_subnet.public_subnetOne.id

  tags = {
    Name = "My DB subnet group"
  }
}  #but maybe it's not a good idea that it is on a public subnet........