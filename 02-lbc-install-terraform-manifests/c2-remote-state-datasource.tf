# Terraform Remote State Datasource - Remote Backend AWS S3
data "terraform_remote_state" "eks" {
  backend = "local"
  config = {
    path = "../terraform-manifests/terraform.tfstate"
  }
}