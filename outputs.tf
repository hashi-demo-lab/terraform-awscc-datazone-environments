output "datazone_environment_profile" {
  value = [for k, v in awscc_datazone_environment_profile.this : {
    id                       = v.id
    domain_id                = v.domain_id
    environment_blueprint_id = v.environment_blueprint_id
    environment_profile_id   = v.environment_profile_id
    }
  ]
  description = "datazone environment profile"
}

output "datazone_environment" {
  value = [for k, v in awscc_datazone_environment.this : {
    id                       = v.id
    domain_id                = v.domain_id
    environment_blueprint_id = v.environment_blueprint_id
    environment_id           = v.environment_id
    environment_profile_id   = v.environment_profile_id
    project_id               = v.project_id
    provider_name            = v.provider_name
    }
  ]
  description = "datazone environment"
}