variable "filenames-1" {
  # can't use for_each with list
  type = set(string)
  default = [ "./demo1.txt", "demo2.txt" ]
}

variable "filenames-2" {
  # for using for_each with list
  # need to convert list to set
  type = list(string)
  default = [ "./demo3.txt", "demo4.txt" ]
}