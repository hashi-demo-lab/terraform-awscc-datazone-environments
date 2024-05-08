datazone_workspace_name = "bu1_data_plaform1_ws"
datazone_environment_profiles = {
  "DefaultDataLake" = {
    aws_account_id                   = "855831148133"
    name                             = "DataLake_profile"
    region                           = "ap-southeast-2"
    environment_blueprint_identifier = "DefaultDataLake"
    project_identifier               = "shared_env"
  }
}

datazone_environments = {
    "Raw" = {
      name                           = "RawDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_project1"
    }
    "Curated" = {
      name                           = "CuratedDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_project2"
    }
    "Product" = {
      name                           = "ProductDataLake"
      environment_profile_identifier = "DefaultDataLake"
      project_identifier             = "data_project3"
    }
}