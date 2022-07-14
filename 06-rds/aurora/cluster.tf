resource "aws_rds_cluster" "default" {
  cluster_identifier      = var.cluster_name
  engine                  = var.engine
  engine_version          = var.engine_version
  availability_zones      = ["ap-south-1a", "ap-south-1b"]
  database_name           = "mydb"
  master_username         = "admin"
  master_password         = "changeThis"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}

resource "aws_rds_cluster_instance" "cluster_instances" {
  count              = 2
  identifier         = "aurora-cluster-demo-${count.index}"
  cluster_identifier = aws_rds_cluster.default.id
  instance_class     = "db.t2.small"
  engine             = aws_rds_cluster.default.engine
  engine_version     = aws_rds_cluster.default.engine_version
}