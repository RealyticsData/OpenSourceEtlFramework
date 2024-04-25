resource "aws_iam_group" "microservice_developers" {
  name = "MicroserviceDevelopers"
  path = "/OpenSourceEtlFramework/"
}

resource "aws_iam_group" "microservice_testers" {
  name = "MicroserviceTesters"
  path = "/OpenSourceEtlFramework/"
}

resource "aws_iam_role" "container_service_account" {
  name   = "OpenSourceEtlFrameworkServiceAccount"
}
