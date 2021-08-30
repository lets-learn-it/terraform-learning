# implicit dependency
resource "local_file" "myfile" {
  filename = "./demo.txt"
  content = "this will be random string ${random_string.my_random_string.id}"

  # convert to explicit dependency
  depends_on = [
    random_string.my_random_string
  ]
}

resource "random_string" "my_random_string" {
  length = 10
}