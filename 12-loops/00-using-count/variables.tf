variable "filename_and_content" {
  type = list(map(string))
  default = [
      {
          name = "file1.txt",
          content = "this is file one"
      },
      {
          name = "file2.txt",
          content = "this is file two"
      }
  ]
}