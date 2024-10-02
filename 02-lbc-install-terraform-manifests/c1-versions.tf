# Terraform Settings Block
terraform {
  required_version = "1.9.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.68.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.15.0"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.4.5"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.32.0"
    }
  }
}
# Terraform HTTP Provider Block
provider "http" {
  # Configuration options
}
