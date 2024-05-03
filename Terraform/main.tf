resource "aws_iam_group" "microservice_developers" {
  name = "MicroserviceDevelopers"
  path = "/OpenSourceEtlFramework/"
}

resource "aws_iam_group" "microservice_testers" {
  name = "MicroserviceTesters"
  path = "/OpenSourceEtlFramework/"
}

data "aws_iam_policy" "AmazonEC2FullAccess" {
  arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

resource "aws_iam_role" "container_service_account" {
  name   = "OpenSourceEtlFrameworkServiceAccount"

  assume_role_policy = jsonencode({
    Version: "2012-10-17",
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Sid       = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "attach_ecs_policy" {
  role       = aws_iam_role.container_service_account.name
  policy_arn = data.aws_iam_policy.AmazonEC2FullAccess.arn
}

resource "aws_ecs_cluster" "etl_cluster" {
  name = "OpenSourceEtlFramework"

  setting {
    name  = "containerInsights"
    value = "enabled"
  }
}

resource "aws_db_instance" "etl_control_db" {
  engine              = "Postgres"
  identifier          = "EtlControl"
  allocated_storage   = 20
  engine_version      = "15.4"
  instance_class      = "db.t3.micro"
  username            = "EtlService"
  password            = "OpenSourceEtl1"
  skip_final_snapshot = true
  publicly_accessible = true
}