# Open Source ETL Framework Terraform module
This Terraform module creates the AWS resources used in the Open Source ETL Framework. This includes the following:
* IAM Group for developers (users who develop transformation microservices)
* IAM Group for testers (users who test the transformation microservices)
* Container role service account

The container solution uses the AWS Elastic Container Service (Amazon ECS) to host the Kubernetes nodes used in this framework.