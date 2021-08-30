resource "local_file" "pet" {
  filename = var.file_name
  content = "my favorite pet is ${random_pet.my-pet.id}"
}

resource "random_pet" "my-pet" {
  prefix = "Mr."
  length = 5
}