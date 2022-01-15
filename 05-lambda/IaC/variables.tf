variable "rest_function_name" {
  type = string
  default = "restfunction"
}

variable "event_function_name" {
  type = string
  default = "eventfunction"
}

variable "s3_bucket" {
  default = "demo-199999"
}

variable "s3_key" {
  default = "java-app-0.0.1-SNAPSHOT-all.jar"
}