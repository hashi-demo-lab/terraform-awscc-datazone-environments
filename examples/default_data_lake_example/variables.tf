variable "tfc_organization" {
  description = "The HCP Terraform organization name"
  type        = string
  default     = "tfc-demo-au"
}

variable "datazone_workspace_name" {
  description = "The workspace to read outputs"
  type        = string
  default     = null
}

variable "region" {
  description = "The region to deploy the domain"
  type        = string
  default     = "ap-southeast-2"
}

variable "domain_id" {
  description = "The domain to deploy the environment"
  type        = string
  default = null
}

variable "project_map" {
  description = "The project to deploy the environment"
  type        = any
  default = {}

}

variable "environment_blueprint_id" {
  description = "The environment blueprint to deploy"
  type        = string
  default     = null
}

variable "datazone_environment_profiles" {
  description = "The environment profiles to deploy"
  type = map(object({
    aws_account_id                   = string
    name                             = string
    description                      = optional(string)
    region                           = string
    environment_blueprint_identifier = string
    project_name                     = string
    user_parameters = optional(list(object({
      name  = string
      value = string
    })))
  }))
  default = {
    "DefaultDataWarehouse" = {
      aws_account_id                   = "855831148133"
      name                             = "DefaultDataWarehouse_profile"
      region                           = "ap-southeast-2"
      environment_blueprint_identifier = "DefaultDataWarehouse"
      project_name                     = "shared_env"
      user_parameters                  = []
    }
    "DefaultDataLake" = {
      aws_account_id                   = "855831148133"
      name                             = "DefaultDataLake_profile"
      region                           = "ap-southeast-2"
      environment_blueprint_identifier = "DefaultDataLake"
      project_name                     = "shared_env"
    }
  }
}

variable "datazone_environments" {
  description = "The environments to deploy"
  type = map(object({
    name                           = string
    environment_profile_identifier = string
    project_target                 = string
  }))

  default = {
    "Raw" = {
      name                           = "Raw Data Lake"
      environment_profile_identifier = "DefaultDataLake"
      project_target                 = "data_team"
    }
    "Curated" = {
      name                           = "Curated Data Lake"
      environment_profile_identifier = "DefaultDataLake"
      project_target                 = "data_team"
    }
    "Product" = {
      name                           = "Product Data Lake"
      environment_profile_identifier = "DefaultDataLake"
      project_target                 = "data_team"
    }
  }
}