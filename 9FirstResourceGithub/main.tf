provider "github" {
  token = "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"
}

resource "github_repository" "gitrepo" {
  name= "terraformrepo"
  description = "Github repo created through Terraform"

  visibility = "public"
  auto_init = true
}