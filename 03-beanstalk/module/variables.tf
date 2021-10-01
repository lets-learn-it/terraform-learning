variable "app_name" {
  description = "application name"
}

variable "stack_name" {
  default = "Corretto 11 with Tomcat 8.5 AL2 version 4.2.5"
}

variable "tier" {
  default     = "WebServer"
  description = "WebServer or Worker"
}

variable "creation_timeout" {
  default = "20m"
}

variable "tags" {
  type    = map
  default = {}
}