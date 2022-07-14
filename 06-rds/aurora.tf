module "aurora" {
    source = "./aurora/"
    cluster_name = var.aurora_cluster_name

    ### For Upgrading ###
    #engine = "aurora"
    engine_version = "5.7.mysql_aurora.2.10.1"
    cluster_pg_name = aws_rds_cluster_parameter_group.cluster_group_57.name
    db_pg_name = aws_db_parameter_group.db_group_57.name
    ####

    subnet_ids = [aws_default_subnet.ap-south-1a.id, aws_default_subnet.ap-south-1b.id]
}

## Parameter group for 5.6 (do not remove before upgrade succeed)

resource "aws_rds_cluster_parameter_group" "cluster_group_56" {
  name        = format("%s-%s", var.aurora_cluster_name, "cluster-pg56")
  family      = "aurora5.6"
  description = "RDS default cluster parameter group"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}

resource "aws_db_parameter_group" "db_group_56" {
  name   = format("%s-%s", var.aurora_cluster_name, "db-pg56")
  family = "mysql5.6"

  parameter {
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    name  = "character_set_client"
    value = "utf8"
  }
}


## Parameter group for 5.7

resource "aws_rds_cluster_parameter_group" "cluster_group_57" {
  name        = format("%s-%s", var.aurora_cluster_name, "cluster-pg57")
  family      = "aurora-mysql5.7"
  description = "RDS default cluster parameter group"

  parameter {
    apply_method = "pending-reboot"
    name  = "character_set_server"
    value = "utf8"
  }

  parameter {
    apply_method = "pending-reboot"
    name  = "character_set_client"
    value = "utf8"
  }

  parameter {
    apply_method = "pending-reboot"
    name  = "tls_version"
    value = "TLSv1.2"
  }
}

resource "aws_db_parameter_group" "db_group_57" {
  name   = format("%s-%s", var.aurora_cluster_name, "db-pg57")
  family = "aurora-mysql5.7"

#   parameter {
#     name  = "character_set_server"
#     value = "utf8"
#   }

}
