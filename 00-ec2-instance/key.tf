resource "aws_key_pair" "key" {
  key_name   = "parikshits_key"
  public_key = file("./sshkey.pub")
}

# passphrase of key is abcd@123