output "developers_group_arn" {
  value = resource.aws_iam_group.microservice_developers.arn
}

output "testers_group_arn" {
  value = resource.aws_iam_group.microservice_testers.arn
}

output "container_role_arn" {
  value = resource.aws_iam_role.container_service_account.arn
}

output "db_instance_endpoint" {
  value = aws_db_instance.etl_control_db.endpoint
}
