variable "filename_and_content" {
  type = map(map(string))
  default = {
      "file1" = {
          name = "file1.txt",
          content = "this is file one"
      },
      "file2" = {
          name = "file2.txt",
          content = "this is file two"
      }
  }
}

variable "another_filename_and_content" {
  type = list
  default = [
    "file3.txt",
    "file4.txt",
  ]
}