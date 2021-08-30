resource "local_file" "pet" {
  filename = "./pet.txt"
  content = "My pet is Cat"
  file_permission = "0700" # run without and after adding this

  lifecycle {
    # creates new resource
    # if successful then delete old one
    create_before_destroy = true
  }
}

resource "local_file" "do-not-delete" {
  filename = "./delete.txt"
  content = "cant delete, need terraform destroy"

  lifecycle {
    # if configuration changes and
    # someone try to apply changes
    # wont work
    prevent_destroy = true
  }
}

resource "local_file" "ignore-changes" {
  filename = "./ignore.txt"
  content = "cant delete, need terraform destroy"

  lifecycle {
    # if you change content above
    # terraform will ignore changes
    ignore_changes = [
      content
    ]
  }
}