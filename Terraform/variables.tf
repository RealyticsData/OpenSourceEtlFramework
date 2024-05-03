variable "environment" {
  description = "Deployment environment"

  type = object ({
    name  = string
  })
  default = {
    name  = "dev"
  }
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}