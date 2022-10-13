#assign values to var

vpc_name              = "main"
public_subnetOne_name = "Public subnetOne"
private_subnet_a_name = "pSubnetOne"
private_subnet_b_name = "pSubnetTwo"
aws_ami_name          = "ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"
aws_ami_owner         = "099720109477"
app_ec2_type          = "t3.medium"
keypair_name          = "talent-academy-ec2"
db_storage            = 10
db_name               = "movie_db"
db_engine             = "mysql"
db_engine_version     = "8.0.30"
db_instance_class     = "db.t2.small"
db_username           = "root"

