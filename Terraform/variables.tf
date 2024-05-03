variable "environment" {
  description = "Deployment environment"

  type = object ({
    name   = string
	suffix = string
	etl_cluster_name = string
	rds_identifier = string
  })
  default = {
    name             = "dev"
	suffix           = "-dev"
	etl_cluster_name = "OpenSourceEtlFramework_Dev"
	rds_identifier   = "etl-control-dev"
  }
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}