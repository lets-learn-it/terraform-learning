resource "local_file" "way-1" {
  filename = each.value
  for_each = var.filenames-1
}

resource "local_file" "way-2" {
  filename = each.value
  for_each = toset(var.filenames-2)
}