variable "cluster_name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
  description = "subnet ids"
}

variable "cluster_family" {
  default = "aurora5.6"
}

variable "db_family" {
  default = "mysql5.6"
}

variable "cluster_parameters" {
  type = list(map(string))
  default = [ ]
}

variable "engine" {
  default = "aurora"
  type = string
}

variable "engine_version" {
  default = "5.6"
  type = string
}

variable "db_parameters" {
  type = list(map(string))
  default = [ ]
}

