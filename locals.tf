locals {
    common_tags = {
    project = var.project
    environment = var.environment
    Name = local.common_name
    }
    common_name = "${var.project}-${var.environment}-${var.sg_name}"  #Roboshop1-Dev-mongodb
    vpc_id = var.vpc_id
}

