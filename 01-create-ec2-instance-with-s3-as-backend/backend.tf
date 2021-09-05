terraform {
  backend "s3" {
    bucket = "demo-19999"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
