# terraform.tfvars
environment = {
	name             = "dev"
	suffix           = "-dev"
	etl_cluster_name = "OpenSourceEtlFramework_Dev"
	rds_identifier   = "etl-control-dev"
}

region = "us-east-1"