terraform {
  required_providers {
    github ={
      source = "integrations/github"
      version="~>5.0"
    }
  }
}

provider "github" {
  token = "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"
  
}

resource "github_repository" "example" {
  name = "createdbyterraform"
  description = "My terraform codebase"
  visibility = "public"
  
}