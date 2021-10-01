variable "ami_id" {
  description = "this is ubuntu ami id"
  default     = "ami-0a23ccb2cdd9286bb"
}

variable "tags" {
  type = map(string)
  default = {
    "name" = "parikshit's ec2"
  }
}
