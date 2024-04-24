variable "environment" {
  description = "Deployment environment"

  type        = object ({
    name           = string
  })
  default = {
    name           = "dev"
  }
}
