variable "hostname" {
  default = "app.terraform.io"
  description = "Hostname of the Terraform Cloud/Enterprise host to connect to"
}

variable "oauth_token_id" {
  description = "The VCS Connection (OAuth Connection + Token) to use"
}