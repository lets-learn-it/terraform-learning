resource "aws_db_subnet_group" "default" {
  name       = format("%s-%s", var.cluster_name, "subnet-group")
  subnet_ids = var.subnet_ids

  tags = {
    Name = "My DB subnet group"
  }
}