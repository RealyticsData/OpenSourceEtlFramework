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
  
  type = object ({
    name  = string
  })
  default = {
    name  = "us-east-1"
  }
}