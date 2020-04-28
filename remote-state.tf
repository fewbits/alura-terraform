terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "lowbit"

    workspaces {
      name = "my-app-prod"
    }
  }
}
