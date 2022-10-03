variable "aws_owner_id"{
    description ="Contains the Owner ID of the ami for amazon linux"
    type = string
}
variable "aws_ami_name"{
    description ="myAmi"
    type = string
}

variable "vpc_name"{
   
    description="name of my vpc"
    type=string

}

variable "public_subnetOne_name" {
    description="what subnet I'm going to use"
    type=string
}