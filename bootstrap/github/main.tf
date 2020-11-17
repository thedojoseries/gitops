provider "github" {
  token        = var.github_token
  organization = "<MY-GH-ORG-NAME>"
}

resource "github_repository" "gitops-tf-dojo" {
  name             = "gitops-tf-dojo"
  description      = "DevOps Dojo on Continuous Integration with GitHub Actions and HashiCorp Terraform"
  visibility       = "private"
  has_projects     = false
  has_wiki         = false
  has_downloads    = false
  topics           = ["example", "devops-dojo", "ci", "continuous-integration", "terraform", "tfc", "terraform-cloud", "github", "github-actions", "gitops"]
}

resource "github_actions_secret" "tfc_token" {
  repository      = github_repository.gitops-tf-dojo.name
  secret_name     = "TF_API_TOKEN"
  plaintext_value = var.tfc_token
}
