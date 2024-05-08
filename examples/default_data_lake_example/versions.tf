terraform {
  required_providers {
    tfe = {
      source  = "hashicorp/tfe"
      version = "0.54.0"
    }
    awscc = {
      source  = "hashicorp/awscc"
      version = "~> 0.7"
    }
  }

  cloud {
    organization = "tfc-demo-au"

    workspaces {
      name    = "bu1_data_project1_env1"
      project = "bu1_data_platform1"
    }
  }

}