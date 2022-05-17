resource "github_repository" "gitrepo" {
  name        = "terraformrepo"
  description = "Github repo created through Terraform"

  visibility = "public"
  auto_init  = true
}

output "gitrepo" {
  value = github_repository.gitrepo.html_url
}