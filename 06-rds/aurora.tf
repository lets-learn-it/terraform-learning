module "aurora" {
    source = "./aurora/"
    cluster_name = "aurora-mysql"
    engine = "aurora"
    engine_version = "5.6"
    cluster_family = "aurora5.6"
    db_family = "mysql5.6"
    subnet_ids = [aws_default_subnet.ap-south-1a.id, aws_default_subnet.ap-south-1b.id]
    cluster_parameters = [{
        name = "character_set_server"
        value = "utf8"
    }, {
        name = "character_set_client"
        value = "utf8"
    }]
}