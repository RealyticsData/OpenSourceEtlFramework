module "iam_developers" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "5.39.0"
  name    = "OpenSourceEtlFrameworkDevelopers"
}

module "iam_testers" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-group-with-policies"
  version = "5.39.0"
  name    = "OpenSourceEtlFrameworkTesters"
}

module "iam_container_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-assumable-roles"
  version = "5.39.0"
  
  create_poweruser_role = true
  poweruser_role_name   = "OpenSourceEtlFrameworkServiceAccount"
}