output "developers_group_arn" {
  value = iam_developers.group_arn
}

output "testers_group_arn" {
  value = iam_testers.group_arn
}

output "container_role_arn" {
  value = iam_container_role.iam_role_arn
}