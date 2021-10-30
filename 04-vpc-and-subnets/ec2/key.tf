resource "aws_key_pair" "key" {
  key_name   = format("%s_%s",var.unique_name,"key")
  public_key = file(var.key)
}