variable "ami_id" {
  description = "this is ubuntu ami id"
  default     = "ami-0a23ccb2cdd9286bb"
}

variable "key" {
  default = "~/.ssh/id_rsa.pub"
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "igress_cidr" {
  type = list(string)
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "parikshit's ec2"
  }
}

variable "unique_name" {
  type = string
}