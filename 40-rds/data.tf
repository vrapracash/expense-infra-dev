data "aws_ssm_parameter" "mysql_sg_id" {
    #/espense/dev/bastion-sg-id
    name = "/${var.project_name}/${var.environment}/mysql_sg_id"
}

data "aws_ssm_parameter" "database_subnet_group_name" {
    name = "/${var.project_name}/${var.environment}/database_subnet_group_name"
}