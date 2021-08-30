variable "file_name" {
  description = "This file name of new file"
  # Validation is experimental feature
  # validation {
  #   condition = length(var.file_name) > 4
  #   error_message = "File name length must be > 4."
  # }
}

variable "content" {
  description = "This is file content"
  default = "My Name is Parikshit"
}