resource "local_file" "my_local_file" {
  count = length(var.filename_and_content)
  filename = var.filename_and_content[count.index].name
  content = var.filename_and_content[count.index].content
}