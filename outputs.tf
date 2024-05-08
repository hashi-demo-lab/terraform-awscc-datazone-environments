output "datazone_environment_profile" {
  value = { id =  awscc_datazone_environment_profile.this.id
            domain_id = awscc_datazone_environment_profile.domain_id
            environment_blueprint_id = awscc_datazone_environment_profile.environment_blueprint_id
            environment_profile_id = awscc_datazone_environment_profile.environment_profile_id
  }
  description = "datazone environment profile"
}

output "datazone_environment" {
value = {
    id        = awscc_datazone_environment.this.id
    domain_id  = awscc_datazone_environment.this.domain_id
    environment_blueprint_id = awscc_datazone_environment.this.environment_blueprint_id
    environment_id = awscc_datazone_environment.this.environment_id
    environment_profile_id= awscc_datazone_environment.this.environment_profile_id
    project_id = awscc_datazone_environment.this.project_id
    provider_name = awscc_datazone_environment.this.provider_name
  }
  description = "datazone environment"
}