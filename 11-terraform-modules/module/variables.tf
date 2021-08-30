# if module provides value then default value will change
variable "file_name1" {
  default = "./demo.txt"
  description = "This is file name"
}

# We are providing default value so need to give in module
variable "file_name2" {
  description = "This is file name"
}