variable "aws_owner_id"{
    description ="Contains the Owner ID of the ami for amazon linux"
    type = string
}
variable "aws_ami_name"{
    description ="myAmi"
    type = string
}

variable "main_vpc"{
   
    description="what vpc I'm going to use"
    type=string

}

variable "aws_subnet" {
    description="what subnet I'm going to use"
    type=string
}