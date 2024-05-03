variable "environment" {
  description = "Deployment environment"

  type = object ({
    name   = string
	suffix = string
  })
  default = {
    name   = "dev"
	suffix = "-dev"
  }
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}