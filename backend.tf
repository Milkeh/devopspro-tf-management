terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "hmckenzie"

    workspaces {
      name = "devopspro-tf-management"
    }
  }
}