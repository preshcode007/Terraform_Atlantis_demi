variable "ami" {
  description = "The AMI to use for the instance"
  type = string
}

variable "instance_type" {
  description = "The type of instance to launch"
  type = string
}


variable "key_name" {
  description = "The name of the key pair to use for the instance"
  type = string
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type = map(string)
}

variable "vpc_id" {
  description = "The ID of the VPC to launch the instance in"
  type = string
}

variable "subnets" {
  description = "A list of subnets to launch the instance in"
  type = list(string)
}

