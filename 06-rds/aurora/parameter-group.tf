resource "aws_rds_cluster_parameter_group" "cluster_group" {
  name        = format("%s-%s",var.cluster_name, "cluster-pg")
  family      = var.cluster_family
  description = "RDS default cluster parameter group"

  dynamic "parameter" {
    for_each = var.cluster_parameters
    iterator = cluster_parameter
    content {
      name = cluster_parameter.value["name"]
      value = cluster_parameter.value["value"]
    }
  }
}

resource "aws_db_parameter_group" "db_group" {
  name   = format("%s-%s",var.cluster_name, "db-pg")
  family = var.db_family

  dynamic "parameter" {
    for_each = var.db_parameters
    iterator = db_parameter
    content {
      name = db_parameter.value["name"]
      value = db_parameter.value["value"]
    }
  }

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}
