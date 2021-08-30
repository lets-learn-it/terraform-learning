resource "local_file" "my_file" {
  filename = var.file_name
  content = var.content
}