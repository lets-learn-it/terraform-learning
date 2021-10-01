variable "mystring" {
  type = string
  default = "hello terraform"
}

variable "mymap" {
  type = map(string)
  default = {
    "name" = "Parikshit"
    "village" = "Kavathe Ekand"
  }
}

variable "mylist" {
  type = list(number)
  default = [1,2,3,4]
}