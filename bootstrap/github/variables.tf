# Input variable definitions

variable "github_token" {
  description = "(Optional) The GitHub personal access token. It can also be sourced from the GITHUB_TOKEN environment variable."
  type        = string
  default     = null
}

variable "tfc_token" {
  description = "The Terraform Cloud user API token. It is required to carry out GitHub Actions in the target Terraform Cloud account."
  type        = string
}
