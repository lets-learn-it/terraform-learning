resource "local_file" "demo1" {
  filename = var.file_name1
  content = "This is demo file"
}

resource "local_file" "demo2" {
  filename = var.file_name2
  content = "This is demo file"
}