variable "region" {
  description = "The region to deploy the domain"
  type        = string
  default     = "ap-southeast-2"
}

variable "domain_id" {
  description = "The domain to deploy the environment"
  type        = string
}

variable "project_map" {
  description = "map of projects to lookup id by project name"
  type        = any
  default = null
}

variable "blueprint_map" {
  description = "The environment blueprint to deploy"
  type        = any
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
    project_identifier               = string
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
      project_identifier               = "shared_env"
      user_parameters                  = []
    }
    "DefaultDataLake" = {
      aws_account_id                   = "855831148133"
      name                             = "DefaultDataLake_profile"
      region                           = "ap-southeast-2"
      environment_blueprint_identifier = "DefaultDataLake"
      project_identifier               = "shared_env"
    }
  }
}



variable "datazone_environments" {
  description = "The environments to deploy"
  type = map(object({
    name                           = string
    environment_profile_identifier = string
    project_identifier                 = string
  }))

  default = {
    "Raw" = {
      name                           = "RawDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_team"
    }
    "Curated" = {
      name                           = "CuratedDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_team"
    }
    "Product" = {
      name                           = "ProductDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_team"
    }
  }
}