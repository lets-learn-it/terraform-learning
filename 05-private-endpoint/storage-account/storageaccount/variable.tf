variable "resource_group_name" {
  type = string
}

variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "white_list_ip" {
  type = list(string)
  default = []
}