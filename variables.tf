variable "aws_ami_owner" {
  description = "Contains the Owner ID of the ami for amazon linux"
  type        = string
}
variable "aws_ami_name" {
  description = "myAmi"
  type        = string
}

variable "vpc_name" {

  description = "name of my vpc"
  type        = string

}

variable "public_subnetOne_name" {
  description = "what subnet I'm going to use"
  type        = string
}

variable "app_ec2_type" {
  description = "type of ec2 I'm using"
  type        = string
}

variable "keypair_name" {}
variable "db_name" {
  description = "name of the db"
}
variable "db_storage" {
  description = "Name of the database"
}
variable "db_engine" {
  description = "db engine that the rds will run on"
}

variable "db_engine_version" {
  description = "the version of mysql that will be used"
}

variable "db_instance_class" {
  description = "the type of instance on which the db will run"
}

variable "username" {
  description = "my username to connect to DB"
}



variable "db_skip_final_snapshot" {
  description = "do not take snapshot before destroying"
  default     = true
}

variable "private_subnet_a" {
  description="private subnet a"
  

}
variable "private_subnet_b"{
  description="private subnet b"
  
  
}