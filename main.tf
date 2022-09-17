resource "tfe_organization" "devopspro" {
  name  = "devopspro"
  email = "mckenzie.harley@gmail.com"
}

resource "tfe_workspace" "codepipeline-website" {
  name         = "codepipeline-website"
  description = "Static website fully managed through AWS CodePipeline"
  organization = tfe_organization.devopspro.name
  vcs_repo {
    identifier  = "Milkeh/devopspro-tf-codepipeline-website"
    oauth_token_id = var.oauth_token_id
  }
  tag_names    = ["codepipeline"]
}