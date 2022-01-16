resource "local_file" "my_local_file" {
  for_each = var.filename_and_content
  filename = each.value.name
  content = each.value.content
}

resource "local_file" "another_local_file" {
  for_each = toset(var.another_filename_and_content)
  filename = each.value
  content = each.value
}