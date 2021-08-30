
resource "local_file" "file_local" {
  filename = "./demo.txt"
  content = data.local_file.python_file.content
}