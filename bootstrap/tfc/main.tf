provider "tfe" {}

module "workspace" {
  source  = "DevOpsJake/workspace/tfc"
  version = "0.0.4"

  name         = "gitops-tf-dojo"
  organization = "<MY-TFC-ORG-NAME>"

  variables = var.variables
}
