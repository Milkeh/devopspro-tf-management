resource "tfe_organization" "devopspro" {
  name  = "devopspro"
  email = "mckenzie.harley@gmail.com"
}

resource "tfe_workspace" "codepipeline-website" {
  name         = "codepipeline-website"
  organization = tfe_organization.devopspro.name
  tag_names    = ["codepipeline"]
}